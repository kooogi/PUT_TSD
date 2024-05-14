# PUT_TSD

Welcome to PUT_TSD! This repository serves as a collection of all projects for Technologies of Software Development classes.

## How to Add a New Project

Follow these steps to add a new project to PUT_TSD:

1. **Clone this repository**: Open your terminal and run the following command:
    ```bash
    git clone github.com/kooogi/PUT_TSD
    ```

2. **Create a new folder**: Navigate into the cloned repository and create a new folder for the repository you want to add. Run these commands:
    ```bash
    cd PUT_TSD
    mkdir new_folder  # folder for the repository you want to add
    ```

3. **Go back and clone the repository you want to move**: Navigate back and clone the repository you wish to move into PUT_TSD. Run these commands:
    ```bash
    cd ..
    git clone github.com/kooogi/repo_u_want_to_move
    ```

4. **Move files from the cloned repository to the created folder**: Go into the cloned repository and move its files to the previously created folder in PUT_TSD. Run these commands:
    ```bash
    cd repo_u_want_to_move
    mv * ../PUT_TSD/new_folder
    ```

5. **Commit changes**: Commit the changes made to PUT_TSD. Run these commands:
    ```bash
    cd ../PUT_TSD
    git add .
    git commit -m "Add [repository_name] to PUT_TSD"
    ```

6. **Push changes to GitHub (optional)**: If you wish to push the changes to GitHub, run:
    ```bash
    git push origin master
    ```

That's it! You've successfully added a new project to PUT_TSD.

Feel free to reach out if you have any questions or need further assistance.
