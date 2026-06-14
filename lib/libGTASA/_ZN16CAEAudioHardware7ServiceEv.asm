; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware7ServiceEv
; Address            : 0x39266C - 0x3926EC
; =========================================================

39266C:  PUSH            {R4-R7,LR}
39266E:  ADD             R7, SP, #0xC
392670:  PUSH.W          {R11}
392674:  MOV             R4, R0
392676:  BLX             j__Z10OALServicev; OALService(void)
39267A:  MOV             R0, R4; this
39267C:  BLX             j__ZN16CAEAudioHardware21RescaleChannelVolumesEv; CAEAudioHardware::RescaleChannelVolumes(void)
392680:  LDRH.W          R0, [R4,#0x4A]
392684:  CMP             R0, #2
392686:  BCC             loc_3926C0
392688:  ADD.W           R5, R4, #0xBD0
39268C:  MOVS            R6, #0
39268E:  LDR.W           R0, [R5,R6,LSL#2]
392692:  LDR             R1, [R0]
392694:  LDR             R1, [R1,#0x1C]
392696:  BLX             R1
392698:  LDRH.W          R0, [R4,#0x4A]
39269C:  ADDS            R1, R6, #2
39269E:  ADDS            R6, #1
3926A0:  CMP             R1, R0
3926A2:  BLT             loc_39268E
3926A4:  CMP             R0, #2
3926A6:  BCC             loc_3926C0
3926A8:  MOVS            R6, #0
3926AA:  LDR.W           R0, [R5,R6,LSL#2]
3926AE:  LDR             R1, [R0]
3926B0:  LDR             R1, [R1,#8]
3926B2:  BLX             R1
3926B4:  LDRH.W          R1, [R4,#0x4A]
3926B8:  ADDS            R0, R6, #2
3926BA:  ADDS            R6, #1
3926BC:  CMP             R0, R1
3926BE:  BLT             loc_3926AA
3926C0:  LDR.W           R0, [R4,#0xB78]
3926C4:  ADD.W           R1, R4, #0x210
3926C8:  ADDW            R2, R4, #0x918
3926CC:  ADD.W           R3, R4, #0x6C0
3926D0:  BLX             j__ZN16CAEMP3BankLoader21UpdateVirtualChannelsEP23tVirtualChannelSettingsPsS2_; CAEMP3BankLoader::UpdateVirtualChannels(tVirtualChannelSettings *,short *,short *)
3926D4:  LDR.W           R0, [R4,#0xB78]; this
3926D8:  BLX             j__ZN16CAEMP3BankLoader7ServiceEv; CAEMP3BankLoader::Service(void)
3926DC:  ADDW            R0, R4, #0xB8C; this
3926E0:  POP.W           {R11}
3926E4:  POP.W           {R4-R7,LR}
3926E8:  B.W             j_j__ZN15CAEStreamThread5CheckEv; j_CAEStreamThread::Check(void)
