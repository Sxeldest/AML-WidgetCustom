; =========================================================
; Game Engine Function: _ZN22CScriptResourceManager24HasResourceBeenRequestedEij
; Address            : 0x335212 - 0x33523C
; =========================================================

335212:  ADDS            R0, #8
335214:  MOV.W           R12, #0
335218:  LDR.W           R3, [R0,#-8]
33521C:  CMP             R3, R1
33521E:  ITTTT EQ
335220:  LDRHEQ          R3, [R0]
335222:  CMPEQ           R3, R2
335224:  MOVEQ           R0, #1
335226:  BXEQ            LR
335228:  ADD.W           R12, R12, #1
33522C:  ADD.W           R0, R0, #0xC
335230:  CMP.W           R12, #0x4B ; 'K'
335234:  ITT CS
335236:  MOVCS           R0, #0
335238:  BXCS            LR
33523A:  B               loc_335218
