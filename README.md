AntonFont
=========

repository for anton webfont


## Building the Fonts

The font is built using fontmake and gftools post processing script. Tools are all python based, so it must be previously installed.

To install all the Python tools into a virtualenv, do the following:

From terminal:

```
cd your/local/project/directory

#once in the project folder run:
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

Then run the build script in the terminal:

```
cd sources
sh build.sh
```
## Update V3.116

This update includes the extension of the character set to support African Latin alphabets. It also includes some fixes to character drawings, revised spacing and basic kerning.