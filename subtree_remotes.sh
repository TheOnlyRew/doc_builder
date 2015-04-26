git remote | grep riak_docs
if [ $? -ne 0 ]; then # there is not a riak_doc remote...
    echo "Adding http://github.com/TheOnlyRew/riak_docs as remote 'riak_docs...'"
    git remote add riak_docs http://github.com/TheOnlyRew/riak_docs --fetch
fi

git remote | grep riakcs_docs
if [ $? -ne 0 ]; then # there is not a riak_doc remote...
    echo "Adding http://github.com/TheOnlyRew/riakcs_docs as remote 'riakcs_docs...'"
    git remote add riakcs_docs http://github.com/TheOnlyRew/riakcs_docs --fetch
fi

echo
echo "Your remotes are correctly set up!"
echo "Below you'll find some useful commands."
echo ""
echo "To add subtrees (e.g. to create a new deploy/ branch from master),"
echo "  * git subtree add --squash -P source/languages/en/riak riak_docs <branch>"
echo "  * git subtree add --squash -P source/languages/en/riakcs riakcs_docs <branch>"
echo "Optionally add a '-m <commit message>' to make the resulting merge messages"
echo "more descriptive."
echo ""
echo "To pull in recent changes into existing subtrees,"
echo "  * git subtree pull --squash -P source/languages/en/riak riak_docs <branch>"
echo "  * git subtree pull --squash -P source/languages/en/riakcs riakcs_docs <branch>"

# I'm adding in a pretty useless change here, just to demonstrate how the
# history will look when interweaving updates to the subtrees and the core repo.
