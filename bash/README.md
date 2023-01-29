# Bash Scripts and Code

## List of Bash Scripts in this Directory

| Filename | Description |
| :---: | :---: |
| updaterepos.sh | Used to loop through all the repos in my repos dir and perform a git fetch & git merge |

### updaterepos.sh

```bash
for sd in * ; do
    if [ $sd != 'updaterepos.sh' ]; then
        cd $sd ; git fetch && git merge && echo "Successfully updated $sd repo" && cd ..
    fi
done
```

The following is a description of the syntax in the order it is executed:

  1. The variable sd is used as a reference to each subdirectory in the for-loop
  2. The \* token implies *in current directory*
  3. `if [ $sd != 'updaterepos.sh' ]; then` initiates a conditional to exclude the script from the for-loop
  4. `cd $sd` changes to the subdirectory (repo) specific to this iteration
  5. `git fetch` will gather all the differences in the remote repo relative to your local repo
  6. `git merge` will merge those changes into your local repo
  7. `echo "Update of $sd repo complete!"` simply displays this text to your console for verification
  8. `cd ..` changes back up one level to perform the next iteration

The ; token is a control operator in Bash used to represent the end of a statement. It is important to note that when used to combine statements, the command following the ; token will execute regardless of whether the command preceding it successfully completed or not.

The && token is also a control operator in Bash used when chaining commands to ensure the commands that precedes the token must have successfully completed prior to executing the command that follows it.
