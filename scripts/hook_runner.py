import os
import subprocess

print("Hook pass: started")

# === Config ===
HOOKS_DIR = os.path.abspath("./hooks")
OUTPUT_BASE_DIR = os.path.expanduser("~/.config")  # where rendered templates live

print(f"Hooks count: {len(os.listdir(HOOKS_DIR))}")
# === Run hooks ===
for hook_file in os.listdir(HOOKS_DIR):
    hook_path = os.path.join(HOOKS_DIR, hook_file)
    
    # Skip non-executable files or directories
    if not os.path.isfile(hook_path) or not os.access(hook_path, os.X_OK):
        print(f"Is a file: {os.path.isfile(hook_path)}, Is ok: {os.access(hook_path, os.X_OK)}")
        continue
    
    # Extract app name from filename (e.g., ghostty.sh -> ghostty)
    app_name = os.path.splitext(hook_file)[0]
    run_in_dir = os.path.join(OUTPUT_BASE_DIR, app_name);
    
    # Assume each hook takes the output base dir as first argument
    try:
        subprocess.run(hook_path, check=True, cwd=run_in_dir)
        print(f"✅ Hook executed for {app_name}: {hook_file}: {run_in_dir}")
    except subprocess.CalledProcessError as e:
        print(f"❌ Hook failed for {app_name}: {hook_file}: {run_in_dir}")
        print(e)

print("Hook pass: ended")
