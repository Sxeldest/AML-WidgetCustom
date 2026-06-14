; =========================================================
; Game Engine Function: sub_155B74
; Address            : 0x155B74 - 0x155BA8
; =========================================================

155B74:  PUSH            {R4,R5,R7,LR}
155B76:  ADD             R7, SP, #8
155B78:  SUB             SP, SP, #0x10
155B7A:  LDRB            R0, [R2]
155B7C:  ADD             R5, SP, #0x18+var_14
155B7E:  MOV             R4, R1
155B80:  LDR             R1, [R2,#8]
155B82:  LSLS            R0, R0, #0x1F
155B84:  IT EQ
155B86:  ADDEQ           R1, R2, #1; s
155B88:  MOV             R0, R5; int
155B8A:  BL              sub_DC6DC
155B8E:  MOV             R0, R4
155B90:  MOV             R1, R5
155B92:  BL              sub_15E4BC
155B96:  LDRB.W          R0, [SP,#0x18+var_14]
155B9A:  LSLS            R0, R0, #0x1F
155B9C:  ITT NE
155B9E:  LDRNE           R0, [SP,#0x18+var_C]; void *
155BA0:  BLXNE           j__ZdlPv; operator delete(void *)
155BA4:  ADD             SP, SP, #0x10
155BA6:  POP             {R4,R5,R7,PC}
