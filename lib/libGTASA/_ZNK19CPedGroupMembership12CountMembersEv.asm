; =========================================================
; Game Engine Function: _ZNK19CPedGroupMembership12CountMembersEv
; Address            : 0x4B234E - 0x4B2388
; =========================================================

4B234E:  ADDS            R1, R0, #4
4B2350:  ADDS            R0, #0x14
4B2352:  VLD1.32         {D16-D17}, [R1]
4B2356:  VMOV.I32        Q9, #1
4B235A:  VLD1.32         {D20-D21}, [R0]
4B235E:  VCEQ.I32        Q8, Q8, #0
4B2362:  VMVN            Q8, Q8
4B2366:  VCEQ.I32        Q10, Q10, #0
4B236A:  VBIC            Q9, Q9, Q10
4B236E:  VSUB.I32        Q8, Q9, Q8
4B2372:  VEXT.8          Q9, Q8, Q8, #8
4B2376:  VADD.I32        Q8, Q8, Q9
4B237A:  VDUP.32         Q9, D16[1]
4B237E:  VADD.I32        Q8, Q8, Q9
4B2382:  VMOV.32         R0, D16[0]
4B2386:  BX              LR
