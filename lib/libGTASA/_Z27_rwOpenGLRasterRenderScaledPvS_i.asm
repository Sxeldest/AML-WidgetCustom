; =========================================================
; Game Engine Function: _Z27_rwOpenGLRasterRenderScaledPvS_i
; Address            : 0x1B05A4 - 0x1B0A58
; =========================================================

1B05A4:  LDRB.W          R2, [R0,#0x22]
1B05A8:  MOVS            R3, #0
1B05AA:  AND.W           R2, R2, #0xF
1B05AE:  CMP             R2, #6
1B05B0:  MOV.W           R2, #1
1B05B4:  IT EQ
1B05B6:  MOVEQ           R3, #1
1B05B8:  B               loc_1B05BC
1B05BA:  ALIGN 4
1B05BC:  PUSH            {R4-R7,LR}
1B05BE:  ADD             R7, SP, #0x14+var_8
1B05C0:  PUSH.W          {R8-R11}
1B05C4:  SUB             SP, SP, #4
1B05C6:  VPUSH           {D8-D15}
1B05CA:  SUB             SP, SP, #8
1B05CC:  MOV             R4, R0
1B05CE:  LDR.W           R0, =(dword_6B3290 - 0x1B05DA)
1B05D2:  MOV             R11, R2
1B05D4:  MOV             R8, R1
1B05D6:  ADD             R0, PC; dword_6B3290
1B05D8:  LDR             R0, [R0]
1B05DA:  MOV             R2, R0
1B05DC:  MOV             R1, R2
1B05DE:  LDR             R2, [R1]
1B05E0:  CMP             R1, R2
1B05E2:  BNE             loc_1B05DC
1B05E4:  LDR             R2, [R0,#0xC]
1B05E6:  LDR             R6, [R1,#0xC]
1B05E8:  CMP             R6, R2
1B05EA:  BNE             loc_1B0608
1B05EC:  LDR             R2, [R0,#0x10]
1B05EE:  LDR             R6, [R1,#0x10]
1B05F0:  CMP             R6, R2
1B05F2:  BNE             loc_1B0608
1B05F4:  LDRH            R2, [R0,#0x1C]
1B05F6:  LDRH            R6, [R1,#0x1C]
1B05F8:  CMP             R6, R2
1B05FA:  BNE             loc_1B0608
1B05FC:  LDRH            R2, [R0,#0x1E]
1B05FE:  LDRH            R1, [R1,#0x1E]
1B0600:  CMP             R1, R2
1B0602:  BNE             loc_1B0608
1B0604:  MOVS            R5, #0
1B0606:  B               loc_1B060A
1B0608:  MOVS            R5, #1
1B060A:  LDRB.W          R0, [R0,#0x20]
1B060E:  SUBS            R1, R0, #4
1B0610:  CMP             R1, #2
1B0612:  BCC.W           loc_1B0862
1B0616:  CMP             R0, #0
1B0618:  BEQ.W           loc_1B0862
1B061C:  CMP             R0, #2
1B061E:  BNE.W           loc_1B0890
1B0622:  LDRB.W          R0, [R4,#0x20]
1B0626:  SUBS            R1, R0, #4
1B0628:  CMP             R1, #2
1B062A:  MOV             R1, R4
1B062C:  BCC             loc_1B063C
1B062E:  CMP             R0, #2
1B0630:  BEQ.W           loc_1B0862
1B0634:  CMP             R0, #0
1B0636:  MOV             R1, R4
1B0638:  BNE.W           loc_1B0890
1B063C:  MOV             R6, R1
1B063E:  LDR             R1, [R6]
1B0640:  CMP             R6, R1
1B0642:  BNE             loc_1B063C
1B0644:  STRD.W          R3, R5, [SP,#0x70+var_70]
1B0648:  LDR             R0, [R6,#0xC]; unsigned int
1B064A:  BLX             j__Z21_rwOpenGLNextPowerOf2j; _rwOpenGLNextPowerOf2(uint)
1B064E:  MOV             R9, R0
1B0650:  LDR             R0, [R6,#0x10]; unsigned int
1B0652:  BLX             j__Z21_rwOpenGLNextPowerOf2j; _rwOpenGLNextPowerOf2(uint)
1B0656:  LDR.W           R1, =(dword_6B3290 - 0x1B066A)
1B065A:  VMOV            S8, R0
1B065E:  VLDR            S2, [R8,#4]
1B0662:  VMOV.F32        S21, #-1.0
1B0666:  ADD             R1, PC; dword_6B3290
1B0668:  VLDR            S0, [R8]
1B066C:  CMP.W           R11, #0
1B0670:  LDR             R1, [R1]
1B0672:  VLDR            S6, [R1,#0x10]
1B0676:  VLDR            S4, [R1,#0xC]
1B067A:  VCVT.F32.S32    S2, S2
1B067E:  VCVT.F32.S32    S28, S6
1B0682:  VCVT.F32.S32    S0, S0
1B0686:  VCVT.F32.S32    S20, S4
1B068A:  VCVT.F32.U32    S18, S8
1B068E:  LDRSH.W         R0, [R4,#0x1E]
1B0692:  VMOV            S6, R9
1B0696:  LDRD.W          R9, R10, [R4,#0xC]
1B069A:  VMOV            S4, R0
1B069E:  VDIV.F32        S2, S2, S28
1B06A2:  VDIV.F32        S0, S0, S20
1B06A6:  VCVT.F32.S32    S22, S4
1B06AA:  LDRSH.W         R0, [R4,#0x1C]
1B06AE:  VADD.F32        S2, S2, S2
1B06B2:  VCVT.F32.U32    S24, S6
1B06B6:  VMOV            S4, R0
1B06BA:  MOVW            R0, #0x1701; unsigned int
1B06BE:  VADD.F32        S23, S0, S0
1B06C2:  VCVT.F32.S32    S30, S4
1B06C6:  VMOV            S4, R10
1B06CA:  VCVT.F32.S32    S17, S4
1B06CE:  VMOV            S4, R9
1B06D2:  VADD.F32        S16, S2, S21
1B06D6:  VCVT.F32.S32    S19, S4
1B06DA:  IT NE
1B06DC:  LDRDNE.W        R9, R10, [R8,#8]
1B06E0:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1B06E4:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1B06E8:  MOVW            R0, #0x1703; unsigned int
1B06EC:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1B06F0:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1B06F4:  MOV.W           R0, #0x1700; unsigned int
1B06F8:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1B06FC:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1B0700:  LDR             R0, =(RasterExtOffset_ptr - 0x1B0706)
1B0702:  ADD             R0, PC; RasterExtOffset_ptr
1B0704:  LDR             R0, [R0]; RasterExtOffset
1B0706:  LDR             R4, [R0]
1B0708:  MOVW            R0, #0xDE1; unsigned int
1B070C:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
1B0710:  LDR             R0, [R6,R4]
1B0712:  MOVS            R4, #0
1B0714:  LDR             R1, [R0]
1B0716:  LDR             R2, [R1,#0x18]
1B0718:  MOVS            R1, #0
1B071A:  BLX             R2
1B071C:  LDR             R0, =(renderQueue_ptr - 0x1B072E)
1B071E:  MOV.W           R1, R10,LSL#1
1B0722:  VMOV            S0, R1
1B0726:  MOV.W           R1, R9,LSL#1
1B072A:  ADD             R0, PC; renderQueue_ptr
1B072C:  VMOV            S2, R1
1B0730:  VCVT.F32.S32    S0, S0
1B0734:  MOVS            R3, #0x21 ; '!'
1B0736:  LDR             R0, [R0]; renderQueue
1B0738:  VCVT.F32.S32    S25, S2
1B073C:  LDR             R1, [R0]
1B073E:  LDR.W           R2, [R1,#0x274]
1B0742:  VNEG.F32        S27, S0
1B0746:  STR.W           R3, [R1,#0x278]
1B074A:  STR             R3, [R2]
1B074C:  LDR.W           R2, [R1,#0x274]
1B0750:  ADDS            R2, #4
1B0752:  STR.W           R2, [R1,#0x274]
1B0756:  LDR             R1, [R0]
1B0758:  LDR.W           R2, [R1,#0x274]
1B075C:  STR             R4, [R2]
1B075E:  LDR.W           R2, [R1,#0x274]
1B0762:  ADDS            R2, #4
1B0764:  STR.W           R2, [R1,#0x274]
1B0768:  LDR             R4, [R0]
1B076A:  LDRB.W          R0, [R4,#0x259]
1B076E:  CMP             R0, #0
1B0770:  ITT NE
1B0772:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B0776:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B077A:  VDIV.F32        S26, S22, S18
1B077E:  LDRD.W          R1, R2, [R4,#0x270]
1B0782:  ADD.W           R0, R4, #0x270
1B0786:  DMB.W           ISH
1B078A:  SUBS            R1, R2, R1
1B078C:  VDIV.F32        S22, S30, S24
1B0790:  VDIV.F32        S30, S17, S18
1B0794:  VDIV.F32        S24, S19, S24
1B0798:  VDIV.F32        S20, S25, S20
1B079C:  VDIV.F32        S28, S27, S28
1B07A0:  VADD.F32        S18, S23, S21
1B07A4:  VNEG.F32        S17, S16
1B07A8:  LDREX.W         R2, [R0]
1B07AC:  ADD             R2, R1
1B07AE:  STREX.W         R3, R2, [R0]
1B07B2:  CMP             R3, #0
1B07B4:  BNE             loc_1B07A8
1B07B6:  DMB.W           ISH
1B07BA:  LDRB.W          R0, [R4,#0x259]
1B07BE:  CMP             R0, #0
1B07C0:  ITT NE
1B07C2:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B07C6:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B07CA:  LDRB.W          R0, [R4,#0x258]
1B07CE:  CMP             R0, #0
1B07D0:  ITT EQ
1B07D2:  MOVEQ           R0, R4; this
1B07D4:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B07D8:  LDR.W           R1, [R4,#0x270]
1B07DC:  LDR.W           R0, [R4,#0x264]
1B07E0:  ADD.W           R1, R1, #0x400
1B07E4:  CMP             R1, R0
1B07E6:  ITT HI
1B07E8:  MOVHI           R0, R4; this
1B07EA:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B07EE:  MOVW            R0, #0xB71; unsigned int
1B07F2:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1B07F6:  LDR             R0, =(renderQueue_ptr - 0x1B07FE)
1B07F8:  MOVS            R3, #0x22 ; '"'
1B07FA:  ADD             R0, PC; renderQueue_ptr
1B07FC:  LDR             R0, [R0]; renderQueue
1B07FE:  LDR             R1, [R0]
1B0800:  LDR.W           R2, [R1,#0x274]
1B0804:  STR.W           R3, [R1,#0x278]
1B0808:  STR             R3, [R2]
1B080A:  LDR.W           R2, [R1,#0x274]
1B080E:  ADDS            R2, #4
1B0810:  STR.W           R2, [R1,#0x274]
1B0814:  LDR             R0, [R0]
1B0816:  LDR             R2, [SP,#0x70+var_70]
1B0818:  LDR.W           R1, [R0,#0x274]
1B081C:  CBZ             R2, loc_1B0898
1B081E:  LDR             R2, =(renderQueue_ptr - 0x1B0828)
1B0820:  MOVS            R3, #0
1B0822:  STR             R3, [R1]
1B0824:  ADD             R2, PC; renderQueue_ptr
1B0826:  LDR.W           R1, [R0,#0x274]
1B082A:  LDR             R2, [R2]; renderQueue
1B082C:  ADDS            R1, #4
1B082E:  STR.W           R1, [R0,#0x274]
1B0832:  LDR             R4, [R2]
1B0834:  LDRB.W          R0, [R4,#0x259]
1B0838:  CMP             R0, #0
1B083A:  ITT NE
1B083C:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B0840:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B0844:  LDRD.W          R1, R2, [R4,#0x270]
1B0848:  ADD.W           R0, R4, #0x270
1B084C:  DMB.W           ISH
1B0850:  SUBS            R1, R2, R1
1B0852:  LDREX.W         R2, [R0]
1B0856:  ADD             R2, R1
1B0858:  STREX.W         R3, R2, [R0]
1B085C:  CMP             R3, #0
1B085E:  BNE             loc_1B0852
1B0860:  B               loc_1B0986
1B0862:  MOV             R0, R4
1B0864:  BL              sub_1B0E24
1B0868:  MOV             R4, R0
1B086A:  CBZ             R5, loc_1B0880
1B086C:  MOVS            R0, #0; this
1B086E:  MOVS            R1, #0; int
1B0870:  MOVS            R2, #0; int
1B0872:  MOVS            R3, #0; unsigned int
1B0874:  BLX             j__Z14emu_glViewportiiii; emu_glViewport(int,int,int,int)
1B0878:  MOVW            R0, #0xC11; unsigned int
1B087C:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1B0880:  MOV             R0, R4
1B0882:  ADD             SP, SP, #8
1B0884:  VPOP            {D8-D15}
1B0888:  ADD             SP, SP, #4
1B088A:  POP.W           {R8-R11}
1B088E:  POP             {R4-R7,PC}
1B0890:  MOVS            R4, #0
1B0892:  CMP             R5, #0
1B0894:  BNE             loc_1B086C
1B0896:  B               loc_1B0880
1B0898:  LDR             R2, =(renderQueue_ptr - 0x1B08A2)
1B089A:  MOVS            R3, #1
1B089C:  STR             R3, [R1]
1B089E:  ADD             R2, PC; renderQueue_ptr
1B08A0:  LDR.W           R1, [R0,#0x274]
1B08A4:  LDR             R2, [R2]; renderQueue
1B08A6:  ADDS            R1, #4
1B08A8:  STR.W           R1, [R0,#0x274]
1B08AC:  LDR             R4, [R2]
1B08AE:  LDRB.W          R0, [R4,#0x259]
1B08B2:  CMP             R0, #0
1B08B4:  ITT NE
1B08B6:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B08BA:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B08BE:  LDRD.W          R1, R2, [R4,#0x270]
1B08C2:  ADD.W           R0, R4, #0x270
1B08C6:  DMB.W           ISH
1B08CA:  SUBS            R1, R2, R1
1B08CC:  LDREX.W         R2, [R0]
1B08D0:  ADD             R2, R1
1B08D2:  STREX.W         R3, R2, [R0]
1B08D6:  CMP             R3, #0
1B08D8:  BNE             loc_1B08CC
1B08DA:  DMB.W           ISH
1B08DE:  LDRB.W          R0, [R4,#0x259]
1B08E2:  CMP             R0, #0
1B08E4:  ITT NE
1B08E6:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B08EA:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B08EE:  LDRB.W          R0, [R4,#0x258]
1B08F2:  CMP             R0, #0
1B08F4:  ITT EQ
1B08F6:  MOVEQ           R0, R4; this
1B08F8:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B08FC:  LDR.W           R1, [R4,#0x270]
1B0900:  LDR.W           R0, [R4,#0x264]
1B0904:  ADD.W           R1, R1, #0x400
1B0908:  CMP             R1, R0
1B090A:  ITT HI
1B090C:  MOVHI           R0, R4; this
1B090E:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B0912:  LDR             R0, =(renderQueue_ptr - 0x1B091A)
1B0914:  MOVS            R3, #0x23 ; '#'
1B0916:  ADD             R0, PC; renderQueue_ptr
1B0918:  LDR             R0, [R0]; renderQueue
1B091A:  LDR             R1, [R0]
1B091C:  LDR.W           R2, [R1,#0x274]
1B0920:  STR.W           R3, [R1,#0x278]
1B0924:  STR             R3, [R2]
1B0926:  MOVS            R3, #4
1B0928:  LDR.W           R2, [R1,#0x274]
1B092C:  ADDS            R2, #4
1B092E:  STR.W           R2, [R1,#0x274]
1B0932:  LDR             R1, [R0]
1B0934:  LDR.W           R2, [R1,#0x274]
1B0938:  STR             R3, [R2]
1B093A:  MOVS            R3, #5
1B093C:  LDR.W           R2, [R1,#0x274]
1B0940:  ADDS            R2, #4
1B0942:  STR.W           R2, [R1,#0x274]
1B0946:  LDR             R1, [R0]
1B0948:  LDR.W           R2, [R1,#0x274]
1B094C:  STR             R3, [R2]
1B094E:  LDR.W           R2, [R1,#0x274]
1B0952:  ADDS            R2, #4
1B0954:  STR.W           R2, [R1,#0x274]
1B0958:  LDR             R4, [R0]
1B095A:  LDRB.W          R0, [R4,#0x259]
1B095E:  CMP             R0, #0
1B0960:  ITT NE
1B0962:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B0966:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B096A:  LDRD.W          R1, R2, [R4,#0x270]
1B096E:  ADD.W           R0, R4, #0x270
1B0972:  DMB.W           ISH
1B0976:  SUBS            R1, R2, R1
1B0978:  LDREX.W         R2, [R0]
1B097C:  ADD             R2, R1
1B097E:  STREX.W         R3, R2, [R0]
1B0982:  CMP             R3, #0
1B0984:  BNE             loc_1B0978
1B0986:  DMB.W           ISH
1B098A:  LDRB.W          R0, [R4,#0x259]
1B098E:  CMP             R0, #0
1B0990:  ITT NE
1B0992:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B0996:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B099A:  LDRB.W          R0, [R4,#0x258]
1B099E:  CMP             R0, #0
1B09A0:  ITT EQ
1B09A2:  MOVEQ           R0, R4; this
1B09A4:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B09A8:  LDR.W           R1, [R4,#0x270]
1B09AC:  LDR.W           R0, [R4,#0x264]
1B09B0:  ADD.W           R1, R1, #0x400
1B09B4:  CMP             R1, R0
1B09B6:  ITT HI
1B09B8:  MOVHI           R0, R4; this
1B09BA:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B09BE:  MOVS            R0, #7; unsigned int
1B09C0:  BLX             j__Z11emu_glBeginj; emu_glBegin(uint)
1B09C4:  MOV.W           R0, #0x3F800000; float
1B09C8:  MOV.W           R1, #0x3F800000; float
1B09CC:  MOV.W           R2, #0x3F800000; float
1B09D0:  MOV.W           R3, #0x3F800000; float
1B09D4:  BLX             j__Z13emu_glColor4fffff; emu_glColor4f(float,float,float,float)
1B09D8:  VMOV            R6, S22
1B09DC:  VMOV            R8, S26
1B09E0:  MOV             R0, R6; float
1B09E2:  MOV             R1, R8; float
1B09E4:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1B09E8:  VMOV            R4, S18
1B09EC:  VMOV            R9, S17
1B09F0:  MOV             R0, R4; float
1B09F2:  MOV             R1, R9; float
1B09F4:  BLX             j__Z14emu_glVertex2fff; emu_glVertex2f(float,float)
1B09F8:  VADD.F32        S0, S26, S30
1B09FC:  MOV             R0, R6; float
1B09FE:  VMOV            R5, S0
1B0A02:  MOV             R1, R5; float
1B0A04:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1B0A08:  VSUB.F32        S0, S28, S16
1B0A0C:  MOV             R0, R4; float
1B0A0E:  VMOV            R6, S0
1B0A12:  MOV             R1, R6; float
1B0A14:  BLX             j__Z14emu_glVertex2fff; emu_glVertex2f(float,float)
1B0A18:  VADD.F32        S0, S22, S24
1B0A1C:  MOV             R1, R5; float
1B0A1E:  VMOV            R4, S0
1B0A22:  MOV             R0, R4; float
1B0A24:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1B0A28:  VADD.F32        S0, S18, S20
1B0A2C:  MOV             R1, R6; float
1B0A2E:  VMOV            R5, S0
1B0A32:  MOV             R0, R5; float
1B0A34:  BLX             j__Z14emu_glVertex2fff; emu_glVertex2f(float,float)
1B0A38:  MOV             R0, R4; float
1B0A3A:  MOV             R1, R8; float
1B0A3C:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1B0A40:  MOV             R0, R5; float
1B0A42:  MOV             R1, R9; float
1B0A44:  BLX             j__Z14emu_glVertex2fff; emu_glVertex2f(float,float)
1B0A48:  BLX             j__Z9emu_glEndv; emu_glEnd(void)
1B0A4C:  MOVS            R4, #1
1B0A4E:  LDR             R5, [SP,#0x70+var_6C]
1B0A50:  CMP             R5, #0
1B0A52:  BNE.W           loc_1B086C
1B0A56:  B               loc_1B0880
