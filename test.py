#! /usr/bin/env python

import time
import datetime

#from_secs = time.mktime(2019, 4, 11, 11, 0, 0, 0, 0, 0)
from_secs = time.mktime( time.strptime('3/11/2019, 00:00:00', "%m/%d/%Y, %H:%M:%S" ) )

print ( 'from_secs = ' + str(from_secs) )