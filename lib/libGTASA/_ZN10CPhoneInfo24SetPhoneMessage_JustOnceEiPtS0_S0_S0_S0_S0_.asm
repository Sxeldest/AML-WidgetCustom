; =========================================================
; Game Engine Function: _ZN10CPhoneInfo24SetPhoneMessage_JustOnceEiPtS0_S0_S0_S0_S0_
; Address            : 0x31CEF8 - 0x31CF2E
; =========================================================

31CEF8:  CBZ             R2, loc_31CF2C
31CEFA:  PUSH            {R4-R7,LR}
31CEFC:  ADD             R7, SP, #0xC
31CEFE:  PUSH.W          {R11}
31CF02:  MOVS            R6, #0x34 ; '4'
31CF04:  LDRD.W          LR, R12, [R7,#arg_8]
31CF08:  MLA.W           R6, R1, R6, R0
31CF0C:  LDRD.W          R5, R4, [R7,#arg_0]
31CF10:  ADD.W           R11, R6, #0x14
31CF14:  STM.W           R11, {R2,R3,R5}
31CF18:  MOVS            R2, #4
31CF1A:  STRD.W          R4, LR, [R6,#0x20]
31CF1E:  STR.W           R12, [R6,#0x28]
31CF22:  POP.W           {R11}
31CF26:  POP.W           {R4-R7,LR}
31CF2A:  B               sub_31CF2E
31CF2C:  MOVS            R2, #3
