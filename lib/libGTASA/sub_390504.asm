; =========================================================
; Game Engine Function: sub_390504
; Address            : 0x390504 - 0x390536
; =========================================================

390504:  PUSH            {R4,R5,R7,LR}
390506:  ADD             R7, SP, #8
390508:  MOV             R4, R0
39050A:  LDR             R0, =(ClumpOffset_ptr - 0x390510)
39050C:  ADD             R0, PC; ClumpOffset_ptr
39050E:  LDR             R0, [R0]; ClumpOffset
390510:  LDR             R0, [R0]
390512:  LDR             R5, [R4,R0]
390514:  CBZ             R5, loc_390532
390516:  MOV             R0, R4
390518:  BLX             j__Z37RpAnimBlendClumpRemoveAllAssociationsP7RpClump; RpAnimBlendClumpRemoveAllAssociations(RpClump *)
39051C:  MOV             R0, R5; this
39051E:  BLX             j__ZN19CAnimBlendClumpDataD2Ev; CAnimBlendClumpData::~CAnimBlendClumpData()
390522:  BLX             _ZdlPv; operator delete(void *)
390526:  LDR             R0, =(ClumpOffset_ptr - 0x39052E)
390528:  MOVS            R1, #0
39052A:  ADD             R0, PC; ClumpOffset_ptr
39052C:  LDR             R0, [R0]; ClumpOffset
39052E:  LDR             R0, [R0]
390530:  STR             R1, [R4,R0]
390532:  MOV             R0, R4
390534:  POP             {R4,R5,R7,PC}
