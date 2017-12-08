# Motors
dbLoadTemplate("substitutions/motor.substitutions", "P=$(PREFIX)")
#dbLoadTemplate("substitutions/softMotor.substitutions", "P=$(PREFIX)")
#dbLoadTemplate("substitutions/pseudoMotor.substitutions", "P=$(PREFIX)")

# Allstop, alldone
iocshLoad("$(MOTOR)/iocsh/allstop.iocsh", "P=$(PREFIX)")

# trajectory scan
#dbLoadRecords("$(MOTOR)/motorApp/Db/trajectoryScan.db","P=$(PREFIX),R=traj1:,NAXES=2,NELM=300,NPULSE=300")
#doAfterIocInit("seq &MAX_trajectoryScan, 'P=$(PREFIX),R=traj1:,M1=m1,M2=m2,M3=m3,M4=m4,M5=m5,M6=m6,M7=m7,M8=m8,PORT=none'")
