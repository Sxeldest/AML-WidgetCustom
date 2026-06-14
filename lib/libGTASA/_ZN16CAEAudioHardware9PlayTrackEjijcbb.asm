; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware9PlayTrackEjijcbb
; Address            : 0x392CEC - 0x392D12
; =========================================================

392CEC:  PUSH            {R4,R6,R7,LR}
392CEE:  ADD             R7, SP, #8
392CF0:  SUB             SP, SP, #0x10
392CF2:  LDRD.W          R4, LR, [R7,#arg_0]
392CF6:  STRB.W          R4, [R0,#0xCF0]
392CFA:  ADDW            R0, R0, #0xB8C; this
392CFE:  LDR.W           R12, [R7,#arg_8]
392D02:  STRD.W          R4, LR, [SP,#0x18+var_18]; char
392D06:  STR.W           R12, [SP,#0x18+var_10]; bool
392D0A:  BLX             j__ZN15CAEStreamThread9PlayTrackEjijcbb; CAEStreamThread::PlayTrack(uint,int,uint,char,bool,bool)
392D0E:  ADD             SP, SP, #0x10
392D10:  POP             {R4,R6,R7,PC}
