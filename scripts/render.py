import os
import json
from jinja2 import Environment, FileSystemLoader

print("Rendering pass: started")

# === Config ===
PALETTE_FILE = "palette.json"
TEMPLATE_DIR = "templates"
OUTPUT_BASE_DIR = os.path.expanduser("~/.config")

# === Load palette ===
with open(PALETTE_FILE) as f:
    palette = json.load(f)

# === Setup Jinja2 ===
env = Environment(loader=FileSystemLoader(TEMPLATE_DIR))

# === Render each template ===
for template_file in os.listdir(TEMPLATE_DIR):
    if not template_file.endswith(".j2"):
        continue

    template = env.get_template(template_file)
    output = template.render(palette)

    base_name = template_file.replace(".j2", "")
    splitted_path = base_name.split(".")
    
    if splitted_path and len(splitted_path) > 1 and not splitted_path[-1] == "":
        out_file_name = "{b}.{a}".format(a=splitted_path.pop(), b=splitted_path.pop())
    else:
        splitted_path.pop()
        out_file_name = splitted_path.pop()

    conf_path = '/'.join(splitted_path)

    print(conf_path)
    print(out_file_name)

    out_dir = os.path.join(OUTPUT_BASE_DIR, conf_path)
    os.makedirs(out_dir, exist_ok=True)

    out_file = os.path.join(out_dir, out_file_name)
    with open(out_file, "w") as f:
        f.write(output)

    print(f"✅ Rendered: {out_file}")

print("Rendering pass: ended")
