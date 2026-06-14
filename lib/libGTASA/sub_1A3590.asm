; =========================================================
; Game Engine Function: sub_1A3590
; Address            : 0x1A3590 - 0x1A35CA
; =========================================================

1A3590:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x1A359E)
1A3592:  MOVW            R1, #0x2A30
1A3596:  LDR             R3, =(_ZTV18CAEDoorAudioEntity_ptr - 0x1A35A0)
1A3598:  MOVS            R2, #0
1A359A:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
1A359C:  ADD             R3, PC; _ZTV18CAEDoorAudioEntity_ptr
1A359E:  LDR             R0, [R0]; CGarages::aGarages ...
1A35A0:  LDR             R3, [R3]; `vtable for'CAEDoorAudioEntity ...
1A35A2:  ADDS            R0, #0xD4
1A35A4:  ADDS            R3, #8
1A35A6:  STR.W           R2, [R0,#-0x74]
1A35AA:  SUBS            R1, #0xD8
1A35AC:  STRD.W          R2, R2, [R0,#-8]
1A35B0:  STR             R2, [R0]
1A35B2:  STR.W           R3, [R0,#-0x84]
1A35B6:  ADD.W           R0, R0, #0xD8
1A35BA:  BNE             loc_1A35A6
1A35BC:  LDR             R0, =(sub_1A3554+1 - 0x1A35C6)
1A35BE:  MOVS            R1, #0; obj
1A35C0:  LDR             R2, =(unk_67A000 - 0x1A35C8)
1A35C2:  ADD             R0, PC; sub_1A3554 ; lpfunc
1A35C4:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A35C6:  B.W             j___cxa_atexit
