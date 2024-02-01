  GNU nano 4.8                    bobby.theme.bash                              

# shellcheck shell=bash
# shellcheck disable=SC2034 # Expected behavior for themes.

SCM_THEME_PROMPT_DIRTY=" ${red?}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green?}✓"
SCM_THEME_PROMPT_PREFIX=" ${green?}|"
SCM_THEME_PROMPT_SUFFIX="${green?}|"

GIT_THEME_PROMPT_DIRTY=" ${red?}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green?}✓"
GIT_THEME_PROMPT_PREFIX=" ${green?}|"
GIT_THEME_PROMPT_SUFFIX="${green?}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

function __bobby_clock() {
        printf '%s' "$(clock_prompt) "

        if [[ "${THEME_SHOW_CLOCK_CHAR:-}" == "true" ]]; then
                printf '%s' "$(clock_char) "
        fi
}

function __display_venv() {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Display the name of the activated virtual environment
        echo "($(python > "$VIRTUAL_ENV")) "
    else
        # Display a message indicating that the global Python environment is be>
        echo "(python > global) "
    fi
}

function prompt_command() {
        PS1="\n${bold_cyan?}○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ ○ \n"
        PS1+="${yellow?}$(ruby_version_prompt) "
        PS1+="${purple?}\h "
        PS1+="${reset_color?}in "
        PS1+="${green?}\w\n"
        # Display the Python venv if it's active or global if none
        PS1+="$(__display_venv)"
        PS1+="${bold_cyan?}$(scm_prompt_char_info) "
        PS1+="${green?}\n→${reset_color?} "
}

: "${THEME_SHOW_CLOCK_CHAR:="true"}"
: "${THEME_CLOCK_CHAR_COLOR:=${red?}}"
: "${THEME_CLOCK_COLOR:=${bold_cyan?}}"
: "${THEME_CLOCK_FORMAT:="%Y-%m-%d %H:%M:%S"}"

safe_append_prompt_command prompt_command










