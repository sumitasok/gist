# You can check all the entries in the index which reference a submodule:
# http://stackoverflow.com/questions/4185365/no-submodule-mapping-found-in-gitmodule-for-a-path-thats-not-a-submodule
git ls-files --stage | grep 160000

# http://stackoverflow.com/questions/4185365/no-submodule-mapping-found-in-gitmodule-for-a-path-thats-not-a-submodule/13394710#13394710
git submodule update --init
git rm --cached OtherLibrary/MKStore
