#!/bin/bash
cat ~/.bashrc > /tmp/konsolebash
echo "m && echo hi" >> /tmp/konsolebash
konsole -e /bin/bash --rcfile /tmp/konsolebash
