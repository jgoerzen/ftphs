cd testsrc
ghc --make -package hslogger -package MissingH -package mtl -fallow-overlapping-instances -fallow-undecidable-instances -fglasgow-exts -cpp -o runtests.exe -i..\dist\build:..\src runtests.hs
cd ..
testsrc\runtests

