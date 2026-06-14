; =========================================================
; Game Engine Function: _ZN14CBaseModelInfo11Add2dEffectEP9C2dEffect
; Address            : 0x385180 - 0x3851B2
; =========================================================

385180:  PUSH            {R4,R5,R7,LR}
385182:  ADD             R7, SP, #8
385184:  MOV             R4, R0
385186:  MOV             R5, R1
385188:  LDRSH.W         R0, [R4,#0x24]
38518C:  CMP.W           R0, #0xFFFFFFFF
385190:  ITTTT GT
385192:  LDRBGT.W        R0, [R4,#0x23]
385196:  ADDGT           R0, #1; this
385198:  STRBGT.W        R0, [R4,#0x23]
38519C:  POPGT           {R4,R5,R7,PC}
38519E:  BLX             j__ZN10CModelInfo16Get2dEffectStoreEv; CModelInfo::Get2dEffectStore(void)
3851A2:  ADDS            R0, #4
3851A4:  MOVS            R1, #1
3851A6:  SUBS            R0, R5, R0
3851A8:  STRB.W          R1, [R4,#0x23]
3851AC:  LSRS            R0, R0, #6
3851AE:  STRH            R0, [R4,#0x24]
3851B0:  POP             {R4,R5,R7,PC}
