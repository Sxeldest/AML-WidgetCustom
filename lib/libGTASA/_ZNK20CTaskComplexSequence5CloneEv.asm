; =========================================================
; Game Engine Function: _ZNK20CTaskComplexSequence5CloneEv
; Address            : 0x4F3890 - 0x4F3956
; =========================================================

4F3890:  PUSH            {R4,R5,R7,LR}
4F3892:  ADD             R7, SP, #8
4F3894:  MOV             R4, R0
4F3896:  MOVS            R0, #dword_40; this
4F3898:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F389C:  MOV             R5, R0
4F389E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F38A2:  VMOV.I32        Q8, #0
4F38A6:  ADD.W           R1, R5, #0x29 ; ')'
4F38AA:  LDR             R0, =(_ZTV20CTaskComplexSequence_ptr - 0x4F38B8)
4F38AC:  VST1.8          {D16-D17}, [R1]
4F38B0:  ADD.W           R1, R5, #0x1C
4F38B4:  ADD             R0, PC; _ZTV20CTaskComplexSequence_ptr
4F38B6:  VST1.32         {D16-D17}, [R1]
4F38BA:  ADD.W           R1, R5, #0xC
4F38BE:  VST1.32         {D16-D17}, [R1]
4F38C2:  LDR             R1, [R0]; `vtable for'CTaskComplexSequence ...
4F38C4:  MOVS            R0, #0
4F38C6:  STR             R0, [R5,#0x3C]
4F38C8:  ADDS            R1, #8
4F38CA:  STR             R1, [R5]
4F38CC:  LDR             R1, [R4,#0x10]
4F38CE:  CBZ             R1, loc_4F38D8
4F38D0:  LDR             R0, [R1]
4F38D2:  LDR             R2, [R0,#8]
4F38D4:  MOV             R0, R1
4F38D6:  BLX             R2
4F38D8:  STR             R0, [R5,#0x10]
4F38DA:  LDR             R0, [R4,#0x14]
4F38DC:  CBZ             R0, loc_4F38E6
4F38DE:  LDR             R1, [R0]
4F38E0:  LDR             R1, [R1,#8]
4F38E2:  BLX             R1
4F38E4:  B               loc_4F38E8
4F38E6:  MOVS            R0, #0
4F38E8:  STR             R0, [R5,#0x14]
4F38EA:  LDR             R0, [R4,#0x18]
4F38EC:  CBZ             R0, loc_4F38F6
4F38EE:  LDR             R1, [R0]
4F38F0:  LDR             R1, [R1,#8]
4F38F2:  BLX             R1
4F38F4:  B               loc_4F38F8
4F38F6:  MOVS            R0, #0
4F38F8:  STR             R0, [R5,#0x18]
4F38FA:  LDR             R0, [R4,#0x1C]
4F38FC:  CBZ             R0, loc_4F3906
4F38FE:  LDR             R1, [R0]
4F3900:  LDR             R1, [R1,#8]
4F3902:  BLX             R1
4F3904:  B               loc_4F3908
4F3906:  MOVS            R0, #0
4F3908:  STR             R0, [R5,#0x1C]
4F390A:  LDR             R0, [R4,#0x20]
4F390C:  CBZ             R0, loc_4F3916
4F390E:  LDR             R1, [R0]
4F3910:  LDR             R1, [R1,#8]
4F3912:  BLX             R1
4F3914:  B               loc_4F3918
4F3916:  MOVS            R0, #0
4F3918:  STR             R0, [R5,#0x20]
4F391A:  LDR             R0, [R4,#0x24]
4F391C:  CBZ             R0, loc_4F3926
4F391E:  LDR             R1, [R0]
4F3920:  LDR             R1, [R1,#8]
4F3922:  BLX             R1
4F3924:  B               loc_4F3928
4F3926:  MOVS            R0, #0
4F3928:  STR             R0, [R5,#0x24]
4F392A:  LDR             R0, [R4,#0x28]
4F392C:  CBZ             R0, loc_4F3936
4F392E:  LDR             R1, [R0]
4F3930:  LDR             R1, [R1,#8]
4F3932:  BLX             R1
4F3934:  B               loc_4F3938
4F3936:  MOVS            R0, #0
4F3938:  STR             R0, [R5,#0x28]
4F393A:  LDR             R0, [R4,#0x2C]
4F393C:  CBZ             R0, loc_4F3946
4F393E:  LDR             R1, [R0]
4F3940:  LDR             R1, [R1,#8]
4F3942:  BLX             R1
4F3944:  B               loc_4F3948
4F3946:  MOVS            R0, #0
4F3948:  STR             R0, [R5,#0x2C]
4F394A:  LDR             R0, [R4,#0x30]
4F394C:  STR             R0, [R5,#0x30]
4F394E:  LDR             R0, [R4,#0xC]
4F3950:  STR             R0, [R5,#0xC]
4F3952:  MOV             R0, R5
4F3954:  POP             {R4,R5,R7,PC}
