# beautiful-bash-setup


This repository contains a custom Bash-it theme, based on the "Bobby" theme, with enhanced Python virtual environment (venv) display functionality. The theme shows the name of the activated Python venv or indicates that the global Python environment is in use when no venv is activated.

## Features

- Displays the activated Python virtual environment.
- Indicates "global" Python environment when no venv is activated.
- Integrates standard Bash-it features for Git, Ruby, etc.
- Customizable prompt design with clock and SCM status.

## Installation

1. **Clone the Repository:**
   First, clone this repository to your local machine. You can do this in any directory:

   ```bash
   git clone https://github.com/wlaa41/beautiful-bash-setup.git
   ```

2. **Install Bash-it (if not already installed):**
   If you haven't already installed Bash-it, follow the instructions at [Bash-it's GitHub repository](https://github.com/Bash-it/bash-it).

3. **Copy the Theme File:**
   Copy the `bobby.theme.bash` file into the Bash-it themes directory:

   ```bash
   cp bash-it-custom-theme/bobby.theme.bash ~/.bash_it/themes/bobby/
   ```

4. **Enable the Theme:**
   Enable the custom theme via the Bash-it command:

   ```bash
   bash-it enable theme bobby
   ```

5. **Reload Your Bash Profile:**
   Reload your `.bashrc` file or restart your terminal to apply the changes.

## Customization

- The theme can be further customized by editing the `bobby.theme.bash` file.
- To modify the appearance of the Python venv indicator or add new features, edit the `__display_venv` function within the theme file.

## Contributing

Contributions to improve this theme or add new features are welcome! Please fork the repository and submit a pull request with your changes.

## License

This theme is released under the [MIT License](LICENSE).

