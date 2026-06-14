; =========================================================
; Game Engine Function: sub_157CB8
; Address            : 0x157CB8 - 0x157D5E
; =========================================================

157CB8:  PUSH            {R4-R7,LR}
157CBA:  ADD             R7, SP, #0xC
157CBC:  PUSH.W          {R11}
157CC0:  SUB.W           SP, SP, #0x810
157CC4:  MOV             R6, R0
157CC6:  MOVS            R0, #0x2C ; ','; unsigned int
157CC8:  MOV             R4, R1
157CCA:  BLX             j__Znwj; operator new(uint)
157CCE:  MOV             R5, R0
157CD0:  MOVW            R1, #0xBB80
157CD4:  MOVS            R2, #2
157CD6:  BL              sub_157AF0
157CDA:  LDR             R0, =(off_234E60 - 0x157CE0)
157CDC:  ADD             R0, PC; off_234E60
157CDE:  LDR             R0, [R0]; `vtable for'BufferedAudioRecorder ...
157CE0:  ADD.W           R1, R0, #8
157CE4:  MOV             R0, R5
157CE6:  STR.W           R1, [R0],#0x18; int
157CEA:  MOV             R1, #0x17700; unsigned int
157CF2:  BL              sub_15BBFE
157CF6:  LDR             R0, =(off_234E64 - 0x157D02)
157CF8:  MOVS            R1, #0
157CFA:  STRD.W          R1, R1, [R5,#0x24]
157CFE:  ADD             R0, PC; off_234E64
157D00:  LDR             R1, [R4]
157D02:  LDR             R0, [R0]; `vtable for'BassAudioRecorder ...
157D04:  ADDS            R0, #8
157D06:  STR             R0, [R5]
157D08:  MOV             R0, R5
157D0A:  BL              sub_157B14
157D0E:  LDR             R0, [R6]
157D10:  STR             R5, [R6]
157D12:  CBZ             R0, loc_157D1A
157D14:  LDR             R1, [R0]
157D16:  LDR             R1, [R1,#4]
157D18:  BLX             R1
157D1A:  ADD.W           R1, R4, #0x10
157D1E:  ADD             R0, SP, #0x820+var_81C
157D20:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
157D24:  LDRB.W          R1, [SP,#0x820+var_81C]
157D28:  LDR             R3, [SP,#0x820+var_814]
157D2A:  LDR             R2, =(aSelectedRecord - 0x157D36); "Selected recording device: %s" ...
157D2C:  LSLS            R1, R1, #0x1F
157D2E:  IT EQ
157D30:  ADDEQ           R3, R0, #1
157D32:  ADD             R2, PC; "Selected recording device: %s"
157D34:  ADD.W           R0, SP, #0x820+s
157D38:  BL              sub_157FA8
157D3C:  ADD.W           R1, SP, #0x820+s; s
157D40:  MOVS            R0, #4; int
157D42:  BL              sub_159B70
157D46:  LDRB.W          R0, [SP,#0x820+var_81C]
157D4A:  LSLS            R0, R0, #0x1F
157D4C:  ITT NE
157D4E:  LDRNE           R0, [SP,#0x820+var_814]; void *
157D50:  BLXNE           j__ZdlPv; operator delete(void *)
157D54:  ADD.W           SP, SP, #0x810
157D58:  POP.W           {R11}
157D5C:  POP             {R4-R7,PC}
