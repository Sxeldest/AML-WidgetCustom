; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity7ServiceEv
; Address            : 0x394D68 - 0x394DDA
; =========================================================

394D68:  PUSH            {R4-R7,LR}
394D6A:  ADD             R7, SP, #0xC
394D6C:  PUSH.W          {R8-R11}
394D70:  SUB             SP, SP, #4
394D72:  MOV             R4, R0
394D74:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x394D82)
394D76:  ADDW            R5, R4, #0x21A
394D7A:  MOV.W           R6, #0x12C
394D7E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
394D80:  MOV.W           R9, #0
394D84:  MOV.W           R10, #0xC3
394D88:  MOV.W           R11, #0xC300
394D8C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
394D8E:  LDR.W           R8, [R0]; CTimer::m_snTimeInMilliseconds
394D92:  LDRB.W          R0, [R5,#-2]
394D96:  CMP             R0, #2
394D98:  BNE             loc_394DCC
394D9A:  LDR.W           R0, [R5,#-6]
394D9E:  CMP             R8, R0
394DA0:  BCC             loc_394DCC
394DA2:  LDR.W           R0, [R5,#-0xA]; this
394DA6:  CMP             R0, #0
394DA8:  IT NE
394DAA:  BLXNE           j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
394DAE:  STR.W           R9, [R5,#-0x12]
394DB2:  STR.W           R9, [R5,#-0xE]
394DB6:  STR.W           R9, [R5,#-0xA]
394DBA:  STRB.W          R10, [R5]
394DBE:  STRH.W          R11, [R5,#-2]
394DC2:  LDR.W           R0, [R4,#0x204]
394DC6:  SUBS            R0, #1
394DC8:  STR.W           R0, [R4,#0x204]
394DCC:  ADDS            R5, #0x14
394DCE:  SUBS            R6, #1
394DD0:  BNE             loc_394D92
394DD2:  ADD             SP, SP, #4
394DD4:  POP.W           {R8-R11}
394DD8:  POP             {R4-R7,PC}
