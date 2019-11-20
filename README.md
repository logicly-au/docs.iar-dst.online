# IAR-DST documentation

# Publish

Ensure you are in the local repo: https://gh.sdintra.net/PMHC/iar-dst-docs. You
can do so in the terminal by issuing this command ...

`git remote get-url --push origin`

The result should be ...

`git@gh.sdintra.net:PMHC/iar-dst-docs.git`

Then run this script from the top of the repo ...

`./scripts/publish.sh`

This will push the changes to our public github.com repo and Read the Docs will
automatically pick up those changes and publish them.
