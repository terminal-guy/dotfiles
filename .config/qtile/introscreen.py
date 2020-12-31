import os
import re
import socket
import subprocess
from libqtile.config import KeyChord, Key, Screen, Group, Drag, Click, ScratchPad, DropDown
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook
from libqtile.lazy import lazy
from typing import List  # noqa: F401



colors = [["#171a1f", "#171a1f"],  # panel background
          ["#434758", "#434758"],  # background for current screen tab
          ["#000000", "#000000"],  # font color for group names

          ["#87dfeb", "#87dfeb"],  # border line color for other tab and odd widgets

          ["#bd99ff", "#bd99ff"],  # color for the even widgets
          ["#985EFF", "#985EFF"],  # border line color for current tab

          ["#f8f8f2", "#f8f8f2"]]  # window name


