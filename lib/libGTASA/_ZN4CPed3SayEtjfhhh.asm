; =========================================================
; Game Engine Function: _ZN4CPed3SayEtjfhhh
; Address            : 0x4AC94C - 0x4AC988
; =========================================================

4AC94C:  CMP             R1, #0
4AC94E:  MOV             R12, R2
4AC950:  ITT EQ
4AC952:  MOVEQ.W         R0, #0xFFFFFFFF
4AC956:  BXEQ            LR
4AC958:  PUSH            {R4,R6,R7,LR}
4AC95A:  ADD             R7, SP, #0x10+var_8
4AC95C:  SUB             SP, SP, #0x10; float
4AC95E:  LDRD.W          R4, R2, [R7,#8]
4AC962:  VMOV            S0, R3
4AC966:  ADD.W           R0, R0, #0x298; this
4AC96A:  STRD.W          R4, R2, [SP,#0x20+var_1C]; unsigned __int8
4AC96E:  LDR.W           LR, [R7,#0x10]
4AC972:  SXTH            R2, R1; __int16
4AC974:  MOVS            R1, #0x34 ; '4'; int
4AC976:  MOV             R3, R12; unsigned int
4AC978:  STR.W           LR, [SP,#0x20+var_14]; unsigned __int8
4AC97C:  VSTR            S0, [SP,#0x20+var_20]
4AC980:  BLX             j__ZN23CAEPedSpeechAudioEntity11AddSayEventEisjfhhh; CAEPedSpeechAudioEntity::AddSayEvent(int,short,uint,float,uchar,uchar,uchar)
4AC984:  ADD             SP, SP, #0x10
4AC986:  POP             {R4,R6,R7,PC}
