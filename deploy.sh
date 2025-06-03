git rm --cached git/coinwiki.github.io     # stop tracking it as a submodule
rm -rf git/coinwiki.github.io/.git         # remove the nested git metadata
sed -i.bak '/coinwiki.github.io/d' .gitmodules  # delete its entry (or edit manually)
git add .gitmodules
git commit -m "Remove mistaken submodule"