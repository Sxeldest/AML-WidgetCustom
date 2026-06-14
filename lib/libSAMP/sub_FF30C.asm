; =========================================================
; Game Engine Function: sub_FF30C
; Address            : 0xFF30C - 0xFF368
; =========================================================

FF30C:  PUSH            {R4-R7,LR}
FF30E:  ADD             R7, SP, #0xC
FF310:  PUSH.W          {R11}
FF314:  SUB             SP, SP, #0x30
FF316:  UXTH            R4, R0
FF318:  CMP             R4, #0xF9
FF31A:  BHI             loc_FF32E
FF31C:  LDR             R1, =(off_25B16C - 0xFF322)
FF31E:  ADD             R1, PC; off_25B16C
FF320:  LDR             R1, [R1]
FF322:  ADD             SP, SP, #0x30 ; '0'
FF324:  POP.W           {R11}
FF328:  POP.W           {R4-R7,LR}
FF32C:  BX              R1
FF32E:  ADD             R0, SP, #0x40+var_2C
FF330:  MOV             R1, LR
FF332:  BL              sub_ECA24
FF336:  LDRD.W          R12, R6, [SP,#0x40+var_2C]
FF33A:  LDRD.W          R0, LR, [SP,#0x40+var_20]
FF33E:  LDR             R5, [SP,#0x40+var_14]
FF340:  LDR             R1, =(aAxl - 0xFF34E); "AXL" ...
FF342:  SUB.W           R3, R12, R0
FF346:  LDR             R2, =(aInvalidBlipIdD - 0xFF354); "Invalid blip ID (%d). Called from [\"%s"... ...
FF348:  SUBS            R5, R5, R0
FF34A:  ADD             R1, PC; "AXL"
FF34C:  STRD.W          R6, R0, [SP,#0x40+var_40]
FF350:  ADD             R2, PC; "Invalid blip ID (%d). Called from [\"%s"...
FF352:  STRD.W          R3, LR, [SP,#0x40+var_38]
FF356:  MOVS            R0, #5; prio
FF358:  MOV             R3, R4
FF35A:  STR             R5, [SP,#0x40+var_30]
FF35C:  BLX             __android_log_print
FF360:  ADD             SP, SP, #0x30 ; '0'
FF362:  POP.W           {R11}
FF366:  POP             {R4-R7,PC}
