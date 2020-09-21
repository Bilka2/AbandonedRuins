#!/usr/bin/bash
gh release create $FACTORIO_MODVERSION "${FACTORIO_MODNAME}_${FACTORIO_MODVERSION}.zip" -t "Version ${FACTORIO_MODVERSION}" -F changes.txt
rm changes.txt
