# IAR-DST documentation

# check edits locally

Open terminal and make sure you are in the iar-dst-docs directory, then run the below;
`./scripts/make.sh`

Then run the following command to open ReadTheDoc preview in your browser 
`open build/html/index.html`

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
