; =========================================================
; Game Engine Function: _ZN10COcclusion4InitEv
; Address            : 0x5AE168 - 0x5AE1B2
; =========================================================

5AE168:  PUSH            {R4,R5,R7,LR}
5AE16A:  ADD             R7, SP, #8
5AE16C:  LDR             R0, =(_ZN10COcclusion25NumInteriorOccludersOnMapE_ptr - 0x5AE176)
5AE16E:  LDR             R1, =(_ZN10COcclusion10NearbyListE_ptr - 0x5AE17A)
5AE170:  LDR             R2, =(_ZN10COcclusion17ListWalkThroughFAE_ptr - 0x5AE180)
5AE172:  ADD             R0, PC; _ZN10COcclusion25NumInteriorOccludersOnMapE_ptr
5AE174:  LDR             R3, =(_ZN10COcclusion25PreviousListWalkThroughFAE_ptr - 0x5AE186)
5AE176:  ADD             R1, PC; _ZN10COcclusion10NearbyListE_ptr
5AE178:  LDR.W           R12, =(_ZN10COcclusion17NumOccludersOnMapE_ptr - 0x5AE188)
5AE17C:  ADD             R2, PC; _ZN10COcclusion17ListWalkThroughFAE_ptr
5AE17E:  LDR.W           LR, =(_ZN10COcclusion11FarAwayListE_ptr - 0x5AE18C)
5AE182:  ADD             R3, PC; _ZN10COcclusion25PreviousListWalkThroughFAE_ptr
5AE184:  ADD             R12, PC; _ZN10COcclusion17NumOccludersOnMapE_ptr
5AE186:  LDR             R0, [R0]; COcclusion::NumInteriorOccludersOnMap ...
5AE188:  ADD             LR, PC; _ZN10COcclusion11FarAwayListE_ptr
5AE18A:  LDR             R4, [R1]; COcclusion::NearbyList ...
5AE18C:  LDR             R5, [R2]; COcclusion::ListWalkThroughFA ...
5AE18E:  LDR.W           R1, [R12]; COcclusion::NumOccludersOnMap ...
5AE192:  MOV.W           R12, #0
5AE196:  LDR             R3, [R3]; COcclusion::PreviousListWalkThroughFA ...
5AE198:  LDR.W           R2, [LR]; COcclusion::FarAwayList ...
5AE19C:  STR.W           R12, [R0]; COcclusion::NumInteriorOccludersOnMap
5AE1A0:  MOVW            R0, #0xFFFF
5AE1A4:  STR.W           R12, [R1]; COcclusion::NumOccludersOnMap
5AE1A8:  STRH            R0, [R2]; COcclusion::FarAwayList
5AE1AA:  STRH            R0, [R4]; COcclusion::NearbyList
5AE1AC:  STRH            R0, [R5]; COcclusion::ListWalkThroughFA
5AE1AE:  STRH            R0, [R3]; COcclusion::PreviousListWalkThroughFA
5AE1B0:  POP             {R4,R5,R7,PC}
