# user-assignable ramp/tweak
dbLoadRecords("$(STD)/stdApp/Db/ramp_tweak.db","P=$(PREFIX),Q=rt1")

### Insertion-device control
#dbLoadRecords("$(STD)/stdApp/Db/IDctrl.db","P=$(PREFIX),xx=02us")

# Soft scaler for testing
#iocshLoad("$(STD)/iocsh/softScaler.iocsh", "P=$(PREFIX), INSTANCE=scaler1")

# 4-step measurement
dbLoadRecords("$(STD)/stdApp/Db/4step.db", "P=$(PREFIX),Q=4step:")

# user-assignable ramp/tweak
dbLoadRecords("$(STD)/stdApp/Db/ramp_tweak.db","P=$(PREFIX),Q=rt1")

# pvHistory (in-crate archive of up to three PV's)
dbLoadRecords("$(STD)/stdApp/Db/pvHistory.db","P=$(PREFIX),N=1,MAXSAMPLES=1440")

# software timer
dbLoadRecords("$(STD)/stdApp/Db/timer.db","P=$(PREFIX),N=1")

# Miscellaneous PV's, such as burtResult
dbLoadRecords("$(STD)/stdApp/Db/misc.db","P=$(PREFIX)")

### Queensgate Nano2k piezo controller
#dbLoadRecords("$(STD)/stdApp/Db/Nano2k.db","P=$(PREFIX),S=s1")

### Load database records for Femto amplifiers
#epicsEnvSet("FBO", "$(PREFIX)Unidig1Bo")
#iocshLoad("$(STD)/iocsh/femto.iocsh", "PREFIX=$(PREFIX), HARDWARE=fem01:, FUNC=seq01:, G1_PV=$(FBO)6, G2_PV=$(FBO)7, G3_PV=$(FBO)8, NO_PV=$(FBO)10")

# Slow feedback
#dbLoadTemplate("substitutions/pid_slow.substitutions")
#dbLoadTemplate("substitutions/async_pid_slow.substitutions")
#dbLoadTemplate("substitutions/fb_epid.substitutions")
