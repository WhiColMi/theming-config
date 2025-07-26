#!/bin/bash

source ~/.config/theming/brown

cat <<EOF
@import url("./source.css");

:root
{
    /** Channel icon */
    --channel-icon: #fff;

    /** Title label */
    --dd-titlebar-label-color: $COLOR_TEXT_SECONDARY;

    /** Discord logo */
    --dd-discord-logo-background: $COLOR_BG_ALT;

    /** Buttons */
    --dd-button-main-color: $COLOR_ORANGE;
    --dd-button-main-color-active: #d9a441;  /* fallback or add variable */
    --dd-button-disabled-color: $COLOR_DARK;

    /** Danger buttons */
    --dd-button-outline-danger-text: $COLOR_RED;
    --dd-button-outline-danger-text-hover: #fff;
    --dd-button-outline-danger-text-active: #fff;
    --dd-button-outline-danger-border: $COLOR_RED;
    --dd-button-outline-danger-border-hover: $COLOR_RED;
    --dd-button-outline-danger-border-active: $COLOR_RED;
    --dd-button-outline-danger-background: $COLOR_RED;
    --dd-button-outline-danger-background-hover: $COLOR_RED;
    --dd-button-outline-danger-background-active: $COLOR_RED;

    /** Danger status */
    --dd-status-danger: $COLOR_RED;

    /** Positive status */
    --dd-status-positive-background: $COLOR_GREEN;
    --dd-status-positive-text: #fff;

    /** New messages */
    --dd-new-messages-bar-background: #282452e8;

    /** Sidebar unread messages */
    --dd-sidebar-unread-messages-background: #ff00638a;

    /** Typing indicator */
    --dd-is-typing-color: #fff;

    /** Embed colors */
    --dd-embed-background: $COLOR_BG;
    --dd-embed-border-color: $COLOR_PURPLE;

    /** Code blocks */
    --dd-code-border-color: $COLOR_PURPLE;

    /** Reaction buttons */
    --dd-reaction-button-background: $COLOR_BG_ALT;
    --dd-reaction-button-background-hover: #292d55;

    /** Default blur intensity */
    --dd-default-blur: 2px;

    /** Text area */
    --dd-text-area-background: $COLOR_BG;

    /** Text colors */
    --dd-primary-color: $COLOR_TEXT_PRIMARY;
    --dd-secondary-color: $COLOR_TEXT_SECONDARY;
    --dd-activity-color: $COLOR_TEXT_PRIMARY;
    --dd-timestamp-color: $COLOR_TEXT_SECONDARY;
    --dd-text-link: $COLOR_ORANGE;
    --dd-text-link-low-saturation: #d9a441;

    /** Border colors */
    --dd-default-border-color: $COLOR_DARK;
    --dd-message-input-border-color: $COLOR_DARK;

    /** Separator colors */
    --dd-user-separator-color: $COLOR_BG_ALT;
    --dd-role-separator-color: $COLOR_BG;

    /** Alternate background */
    --dd-alt-background: $COLOR_DARK;

    /** Core background styling */
    --dd-background-primary: $COLOR_BG;
    --dd-background-secondary: $COLOR_BG_ALT;
    --dd-background-secondary-alt: #3a2f22;
    --dd-background-tertiary: $COLOR_BG;

    /** Floating colors */
    --dd-background-accent: $COLOR_ORANGE;
    --dd-background-floating: $COLOR_BG_ALT;
    --dd-background-nested-floating: $COLOR_BG_ALT;

    /** Message mentioned colors */
    --dd-background-mentioned: $COLOR_PURPLE;
    --dd-background-mentioned-hover: $COLOR_PURPLE;

    /** Chat colors */
    --dd-chat-background: $COLOR_BG;
    --dd-chat-border: $COLOR_PURPLE;
    --dd-chat-input-container-background: $COLOR_BG_ALT;

    /** Message background (hover state) */
    --dd-message-hover-background: $COLOR_BG_ALT;

    /** Message hover color */
    --dd-background-message-hover: $COLOR_BG_ALT;

    /** Member (sidebar) hover */
    --dd-member-list-hover-color: $COLOR_BG_ALT;

    /** Selection colors */
    --dd-background-modifier-hover: $COLOR_ORANGE;
    --dd-background-modifier-active: $COLOR_ORANGE;
    --dd-background-modifier-selected: $COLOR_ORANGE;
    --dd-background-modifier-accent: $COLOR_BG_ALT;

    /** Text badge */
    --dd-badge-text-color: $COLOR_ORANGE;

    /** Icons */
    --dd-guild-boosting-pink: $COLOR_ORANGE;

    /** Primary colors */
    --dd-primary-dark-800: $COLOR_BG;
}
EOF

