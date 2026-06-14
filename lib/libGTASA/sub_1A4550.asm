; =========================================================
; Game Engine Function: sub_1A4550
; Address            : 0x1A4550 - 0x1A48A4
; =========================================================

1A4550:  PUSH            {R4-R7,LR}
1A4552:  ADD             R7, SP, #0xC
1A4554:  PUSH.W          {R8-R11}
1A4558:  SUB             SP, SP, #4
1A455A:  VPUSH           {D8-D15}
1A455E:  LDR             R0, =(gHandShaker_ptr - 0x1A4570)
1A4560:  MOVW            R6, #0x6666
1A4564:  MOVW            R10, #0x126F
1A4568:  VLDR            S20, =4.6566e-10
1A456C:  ADD             R0, PC; gHandShaker_ptr
1A456E:  VLDR            S22, =0.0002
1A4572:  VLDR            S24, =0.0
1A4576:  MOVS            R4, #0
1A4578:  LDR             R5, [R0]; gHandShaker
1A457A:  ADR             R0, dword_1A48B0
1A457C:  VLD1.64         {D8-D9}, [R0@128]
1A4580:  MOVT            R6, #0x3FA6
1A4584:  MOV.W           R8, #0x14
1A4588:  MOVT            R10, #0x3A83
1A458C:  MOV.W           R11, #0
1A4590:  MOVW            R0, #0xB717
1A4594:  ADD.W           R9, R5, R11
1A4598:  MOVT            R0, #0x3951
1A459C:  STR.W           R4, [R5,R11]
1A45A0:  ADD.W           R1, R9, #0x88
1A45A4:  STR.W           R0, [R9,#0x1C]
1A45A8:  MOV             R0, #0x38D1B717
1A45B0:  STR.W           R0, [R9,#0x20]
1A45B4:  MOV             R0, #0x3FB33333
1A45BC:  STRD.W          R6, R6, [R9,#0x30]
1A45C0:  STR.W           R0, [R9,#0x38]
1A45C4:  MOV             R0, #0x3E99999A
1A45CC:  STRD.W          R4, R4, [R9,#0x7C]
1A45D0:  STR.W           R0, [R9,#0x84]
1A45D4:  MOV.W           R0, #0x3F800000
1A45D8:  STM.W           R1, {R0,R8,R10}
1A45DC:  ADD.W           R0, R9, #0xC
1A45E0:  STRD.W          R4, R4, [R9,#4]
1A45E4:  VST1.32         {D8-D9}, [R0]
1A45E8:  BLX             rand
1A45EC:  VMOV            S0, R0
1A45F0:  VLDR            S26, [R9,#0x1C]
1A45F4:  VCVT.F32.S32    S28, S0
1A45F8:  BLX             rand
1A45FC:  VMOV            S0, R0
1A4600:  VLDR            S30, [R9,#0x20]
1A4604:  VCVT.F32.S32    S21, S0
1A4608:  BLX             rand
1A460C:  VMOV            S0, R0
1A4610:  ADD.W           R11, R11, #0x94
1A4614:  VMUL.F32        S2, S28, S20
1A4618:  CMP.W           R11, #0x378
1A461C:  VCVT.F32.S32    S0, S0
1A4620:  VMUL.F32        S4, S21, S20
1A4624:  VMUL.F32        S2, S2, S22
1A4628:  VMUL.F32        S0, S0, S20
1A462C:  VMUL.F32        S4, S26, S4
1A4630:  VADD.F32        S2, S2, S24
1A4634:  VMUL.F32        S0, S30, S0
1A4638:  VADD.F32        S4, S4, S24
1A463C:  VSTR            S2, [R9,#0x24]
1A4640:  VADD.F32        S0, S0, S24
1A4644:  VSTR            S4, [R9,#0x28]
1A4648:  VSTR            S0, [R9,#0x2C]
1A464C:  BNE             loc_1A4590
1A464E:  LDR.W           R8, =(unk_67A000 - 0x1A465C)
1A4652:  MOVS            R1, #0; obj
1A4654:  LDR             R0, =(sub_1A4500+1 - 0x1A465E)
1A4656:  MOVS            R4, #0
1A4658:  ADD             R8, PC; unk_67A000
1A465A:  ADD             R0, PC; sub_1A4500 ; lpfunc
1A465C:  MOV             R2, R8; lpdso_handle
1A465E:  BLX             __cxa_atexit
1A4662:  MOVS            R0, #0; this
1A4664:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
1A4668:  LDR             R1, =(currentPad_ptr - 0x1A4670)
1A466A:  LDR             R2, =(TheCamera_ptr - 0x1A4672)
1A466C:  ADD             R1, PC; currentPad_ptr
1A466E:  ADD             R2, PC; TheCamera_ptr
1A4670:  LDR             R1, [R1]; currentPad
1A4672:  LDR             R5, [R2]; TheCamera
1A4674:  STR             R0, [R1]
1A4676:  MOV             R0, R5; this
1A4678:  BLX             j__ZN7CCameraC2Ev; CCamera::CCamera(void)
1A467C:  LDR             R0, =(_ZN7CCameraD2Ev_ptr - 0x1A4686)
1A467E:  MOV             R1, R5; obj
1A4680:  MOV             R2, R8; lpdso_handle
1A4682:  ADD             R0, PC; _ZN7CCameraD2Ev_ptr
1A4684:  LDR             R0, [R0]; CCamera::~CCamera() ; lpfunc
1A4686:  BLX             __cxa_atexit
1A468A:  LDR             R0, =(gIdleCam_ptr - 0x1A469A)
1A468C:  MOV.W           R6, #0x3F800000
1A4690:  LDR             R1, =(_ZN7CMatrixD2Ev_ptr_0 - 0x1A469C)
1A4692:  MOVS            R5, #0
1A4694:  LDR             R3, =(StoreMatrixForMirror_ptr - 0x1A46A4)
1A4696:  ADD             R0, PC; gIdleCam_ptr
1A4698:  ADD             R1, PC; _ZN7CMatrixD2Ev_ptr_0
1A469A:  MOVT            R5, #0x428C
1A469E:  LDR             R2, [R0]; gIdleCam
1A46A0:  ADD             R3, PC; StoreMatrixForMirror_ptr
1A46A2:  ADR             R0, dword_1A48C0
1A46A4:  MOVW            R12, #0x4000
1A46A8:  VLD1.64         {D16-D17}, [R0@128]
1A46AC:  MOVT            R12, #0x461C
1A46B0:  LDR             R0, [R1]; CMatrix::~CMatrix() ; lpfunc
1A46B2:  LDR             R1, [R3]; StoreMatrixForMirror ; obj
1A46B4:  ADD.W           R3, R2, #0x40 ; '@'
1A46B8:  VST1.32         {D16-D17}, [R3]
1A46BC:  MOVS            R3, #0x44FA0000
1A46C2:  VMOV.I32        Q8, #0
1A46C6:  STR             R3, [R2,#(dword_952CD0 - 0x952CBC)]
1A46C8:  MOV             R3, #0x47AFC800
1A46D0:  STR             R3, [R2,#(dword_952CE4 - 0x952CBC)]
1A46D2:  MOV             R3, #0x453B8000
1A46DA:  STR.W           R6, [R2,#(dword_952D44 - 0x952CBC)]
1A46DE:  STR.W           R3, [R2,#(dword_952D48 - 0x952CBC)]
1A46E2:  MOVS            R3, #0x41700000
1A46E8:  STR             R3, [R2,#(dword_952D24 - 0x952CBC)]
1A46EA:  MOVS            R3, #0x447A0000
1A46F0:  STR             R5, [R2,#(dword_952D28 - 0x952CBC)]
1A46F2:  STR             R3, [R2,#(dword_952D30 - 0x952CBC)]
1A46F4:  MOVS            R3, #0xE
1A46F6:  STR             R3, [R2,#(dword_952D0C - 0x952CBC)]
1A46F8:  MOV             R3, #0x463B8000
1A4700:  STR             R3, [R2,#(dword_952D38 - 0x952CBC)]
1A4702:  MOV             R3, #0x459C4000
1A470A:  STR             R3, [R2,#(dword_952CF4 - 0x952CBC)]
1A470C:  MOV.W           R3, #0x40000000
1A4710:  STR.W           R3, [R2,#(dword_952D40 - 0x952CBC)]
1A4714:  MOVS            R3, #3
1A4716:  STRD.W          R4, R4, [R2,#(dword_952D4C - 0x952CBC)]
1A471A:  STRD.W          R4, R4, [R2,#(dword_952CD4 - 0x952CBC)]
1A471E:  STR             R3, [R2,#(dword_952D14 - 0x952CBC)]
1A4720:  STR             R5, [R2,#(dword_952D2C - 0x952CBC)]
1A4722:  LDR             R5, =(dword_952D58 - 0x1A4730)
1A4724:  LDR             R3, =(vecWheelCamBoatOffsetAlt_ptr - 0x1A4732)
1A4726:  STRD.W          R4, R6, [R2,#(dword_952CDC - 0x952CBC)]
1A472A:  MOVS            R6, #0
1A472C:  ADD             R5, PC; dword_952D58
1A472E:  ADD             R3, PC; vecWheelCamBoatOffsetAlt_ptr
1A4730:  MOVT            R6, #0xBF80
1A4734:  STR             R6, [R2,#(dword_952CE8 - 0x952CBC)]
1A4736:  STR             R6, [R2,#(dword_952CF0 - 0x952CBC)]
1A4738:  STRD.W          R6, R6, [R2,#(dword_952D18 - 0x952CBC)]
1A473C:  STR             R6, [R2,#(dword_952D20 - 0x952CBC)]
1A473E:  STR             R6, [R2,#(dword_952CF8 - 0x952CBC)]
1A4740:  STR             R4, [R2,#(dword_952D10 - 0x952CBC)]
1A4742:  STRH.W          R4, [R2,#(word_952D34 - 0x952CBC)]
1A4746:  STR.W           R6, [R2,#(dword_952D3C - 0x952CBC)]
1A474A:  STRD.W          R4, R4, [R5]
1A474E:  VST1.32         {D16-D17}, [R2]!
1A4752:  LDR.W           LR, [R3]; vecWheelCamBoatOffsetAlt
1A4756:  LDR             R3, =(LookatOffset_ptr - 0x1A4764)
1A4758:  STR             R6, [R2]
1A475A:  MOVW            R6, #0xE979
1A475E:  LDR             R2, =(dword_952D64 - 0x1A476E)
1A4760:  ADD             R3, PC; LookatOffset_ptr
1A4762:  STR.W           R12, [R5,#(dword_952D60 - 0x952D58)]
1A4766:  MOVT            R6, #0x3EA6
1A476A:  ADD             R2, PC; dword_952D64
1A476C:  LDR             R5, =(vecWheelCamBoatOffset_ptr - 0x1A4778)
1A476E:  LDR             R3, [R3]; LookatOffset
1A4770:  STRD.W          R4, R4, [R2]
1A4774:  ADD             R5, PC; vecWheelCamBoatOffset_ptr
1A4776:  STR             R4, [R2,#(dword_952D6C - 0x952D64)]
1A4778:  LDR             R2, =(dword_952E20 - 0x1A478C)
1A477A:  STRD.W          R4, R4, [R3]
1A477E:  STR             R6, [R3,#(dword_952DF0 - 0x952DE8)]
1A4780:  MOVW            R3, #0xC28F
1A4784:  MOVW            R6, #0xCCCD
1A4788:  ADD             R2, PC; dword_952E20
1A478A:  LDR             R5, [R5]; vecWheelCamBoatOffset
1A478C:  MOVT            R3, #0x3D75
1A4790:  MOVT            R6, #0x3D4C
1A4794:  STRD.W          R3, R6, [R2]
1A4798:  MOVW            R3, #0xCCCD
1A479C:  STR             R4, [R2,#(dword_952E28 - 0x952E20)]
1A479E:  MOV.W           R2, #0xBF000000
1A47A2:  MOVT            R3, #0xBF4C
1A47A6:  MOVW            R6, #0x999A
1A47AA:  STRD.W          R2, R3, [R5]
1A47AE:  MOV             R2, #0x3E99999A
1A47B6:  MOVW            R3, #0xCCCD
1A47BA:  STR             R2, [R5,#(dword_952E54 - 0x952E4C)]
1A47BC:  MOV             R2, #0x3E4CCCCD
1A47C4:  MOVT            R3, #0xBE4C
1A47C8:  MOVT            R6, #0xBE99
1A47CC:  STM.W           LR, {R2,R3,R6}
1A47D0:  MOV             R2, R8; lpdso_handle
1A47D2:  STRD.W          R4, R4, [R1,#(dword_952F78 - 0x952F38)]
1A47D6:  BLX             __cxa_atexit
1A47DA:  LDR             R0, =(gHCM_ptr - 0x1A47EA)
1A47DC:  ADR             R1, dword_1A48D0
1A47DE:  VLD1.64         {D16-D17}, [R1@128]
1A47E2:  MOVW            R11, #0
1A47E6:  ADD             R0, PC; gHCM_ptr
1A47E8:  MOVT            R11, #0x4120
1A47EC:  LDR             R3, =(gCurCamColVars_ptr - 0x1A47FA)
1A47EE:  MOVW            LR, #0
1A47F2:  LDR             R1, [R0]; gHCM
1A47F4:  ADR             R0, dword_1A48E0
1A47F6:  ADD             R3, PC; gCurCamColVars_ptr
1A47F8:  VLD1.64         {D18-D19}, [R0@128]
1A47FC:  ADD.W           R5, R1, #0x18
1A4800:  MOV.W           R0, #0xFA0
1A4804:  LDR             R3, [R3]; gCurCamColVars
1A4806:  MOVW            R12, #0
1A480A:  VST1.32         {D16-D17}, [R5]
1A480E:  ADD.W           R5, R1, #0x28 ; '('
1A4812:  MOVW            R9, #0
1A4816:  MOVW            R10, #0
1A481A:  VST1.32         {D18-D19}, [R5]
1A481E:  MOVS            R5, #8
1A4820:  MOVT            LR, #0x42C8
1A4824:  MOVT            R12, #0x42DC
1A4828:  LDR             R2, =(gCamColVars_ptr - 0x1A483A)
1A482A:  MOVT            R9, #0x40A0
1A482E:  LDR             R6, =(gpCamColVars_ptr - 0x1A4840)
1A4830:  MOVT            R10, #0x4140
1A4834:  STR             R5, [R1,#(dword_953058 - 0x953000)]
1A4836:  ADD             R2, PC; gCamColVars_ptr
1A4838:  STRD.W          R4, R11, [R1,#(dword_953038 - 0x953000)]
1A483C:  ADD             R6, PC; gpCamColVars_ptr
1A483E:  LDRB            R3, [R3]
1A4840:  MOV.W           R5, #0x3F400000
1A4844:  STRD.W          R5, R0, [R1,#(dword_953094 - 0x953000)]
1A4848:  LDR             R6, [R6]; gpCamColVars
1A484A:  ADD.W           R0, R3, R3,LSL#1
1A484E:  LDR             R2, [R2]; gCamColVars
1A4850:  LDR.W           R8, =(nullsub_33+1 - 0x1A4862)
1A4854:  MOVS            R3, #0x1E
1A4856:  ADD.W           R0, R2, R0,LSL#3
1A485A:  MOVS            R2, #0x3C ; '<'
1A485C:  STR             R3, [R1,#(dword_953048 - 0x953000)]
1A485E:  ADD             R8, PC; nullsub_33
1A4860:  STRB.W          R4, [R1,#(byte_953040 - 0x953000)]
1A4864:  STRB.W          R4, [R1,#(byte_95305C - 0x953000)]
1A4868:  STR             R0, [R6]
1A486A:  MOVS            R0, #0
1A486C:  STRH.W          R4, [R1,#(word_953080 - 0x953000)]
1A4870:  MOVT            R0, #0x4240
1A4874:  STRD.W          R2, R2, [R1,#(dword_953060 - 0x953000)]
1A4878:  LDR             R2, =(unk_67A000 - 0x1A4886)
1A487A:  STRD.W          LR, R12, [R1,#(dword_953068 - 0x953000)]
1A487E:  STRD.W          R11, R9, [R1,#(dword_953070 - 0x953000)]
1A4882:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A4884:  STRD.W          R10, R0, [R1,#(dword_953078 - 0x953000)]
1A4888:  MOV             R0, R8; lpfunc
1A488A:  STR             R3, [R1,#(dword_953044 - 0x953000)]
1A488C:  STRB.W          R4, [R1,#(byte_953088 - 0x953000)]
1A4890:  MOVS            R1, #0; obj
1A4892:  VPOP            {D8-D15}
1A4896:  ADD             SP, SP, #4
1A4898:  POP.W           {R8-R11}
1A489C:  POP.W           {R4-R7,LR}
1A48A0:  B.W             j___cxa_atexit
