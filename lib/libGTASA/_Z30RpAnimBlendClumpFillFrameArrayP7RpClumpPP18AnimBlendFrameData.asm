; =========================================================
; Game Engine Function: _Z30RpAnimBlendClumpFillFrameArrayP7RpClumpPP18AnimBlendFrameData
; Address            : 0x390700 - 0x390776
; =========================================================

390700:  PUSH            {R4-R7,LR}
390702:  ADD             R7, SP, #0xC
390704:  PUSH.W          {R8}
390708:  MOV             R5, R0
39070A:  LDR             R0, =(ClumpOffset_ptr - 0x390712)
39070C:  MOV             R8, R1
39070E:  ADD             R0, PC; ClumpOffset_ptr
390710:  LDR             R0, [R0]; ClumpOffset
390712:  LDR             R0, [R0]
390714:  LDR             R6, [R5,R0]
390716:  MOV             R0, R5
390718:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
39071C:  CBZ             R0, loc_390762
39071E:  LDR             R0, [R0,#0x18]
390720:  BLX             j_RpSkinGeometryGetSkin
390724:  CBZ             R0, loc_390762
390726:  LDR             R0, =(ClumpOffset_ptr - 0x39072C)
390728:  ADD             R0, PC; ClumpOffset_ptr
39072A:  LDR             R0, [R0]; ClumpOffset
39072C:  LDR             R0, [R0]
39072E:  LDR             R4, [R5,R0]
390730:  MOV             R0, R5
390732:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
390736:  MOV             R5, R0
390738:  MOVS            R6, #1
39073A:  MOV             R0, R6; int
39073C:  BLX             j__Z22ConvertPedNode2BoneTagi; ConvertPedNode2BoneTag(int)
390740:  MOV             R1, R0
390742:  MOV             R0, R5
390744:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
390748:  LDR             R1, [R4,#0x10]
39074A:  ADD.W           R0, R0, R0,LSL#1
39074E:  ADD.W           R0, R1, R0,LSL#3
390752:  STR.W           R0, [R8,R6,LSL#2]
390756:  ADDS            R6, #1
390758:  CMP             R6, #0x13
39075A:  BNE             loc_39073A
39075C:  POP.W           {R8}
390760:  POP             {R4-R7,PC}
390762:  LDR             R1, =(sub_390784+1 - 0x39076C)
390764:  MOV             R0, R6
390766:  MOV             R2, R8
390768:  ADD             R1, PC; sub_390784
39076A:  POP.W           {R8}
39076E:  POP.W           {R4-R7,LR}
390772:  B.W             sub_198D10
