; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage19CheckDataNotCorruptEiPc
; Address            : 0x48395C - 0x483ADC
; =========================================================

48395C:  PUSH            {R4-R7,LR}
48395E:  ADD             R7, SP, #0xC
483960:  PUSH.W          {R8,R9,R11}
483964:  VPUSH           {D8-D9}
483968:  SUB             SP, SP, #8
48396A:  MOV             R2, R0; unsigned int
48396C:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x483974)
48396E:  MOVS            R4, #0
483970:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
483972:  LDR             R0, [R0]; CGenericGameStorage::ms_bFailed ...
483974:  STRB            R4, [R0]; CGenericGameStorage::ms_bFailed
483976:  MOV             R0, R1; this
483978:  MOV             R1, R2; char *
48397A:  BLX             j__ZN19CGenericGameStorage18OpenFileForReadingEPcj; CGenericGameStorage::OpenFileForReading(char *,uint)
48397E:  CMP             R0, #1
483980:  BNE.W           loc_483ACE
483984:  LDR             R0, =(PcSaveHelper_ptr - 0x48398A)
483986:  ADD             R0, PC; PcSaveHelper_ptr
483988:  LDR             R0, [R0]; PcSaveHelper ; this
48398A:  STR             R4, [R0]
48398C:  BLX             j__ZN19CGenericGameStorage14LoadWorkBufferEv; CGenericGameStorage::LoadWorkBuffer(void)
483990:  CMP             R0, #1
483992:  BNE             loc_483A20
483994:  LDR             R0, =(_ZN19CGenericGameStorage17ms_WorkBufferSizeE_ptr - 0x4839A2)
483996:  MOVS            R4, #0
483998:  VDUP.32         Q4, R4
48399C:  ADD             R6, SP, #0x30+var_2C
48399E:  ADD             R0, PC; _ZN19CGenericGameStorage17ms_WorkBufferSizeE_ptr
4839A0:  LDR.W           R9, [R0]; CGenericGameStorage::ms_WorkBufferSize ...
4839A4:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x4839AA)
4839A6:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
4839A8:  LDR.W           R8, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
4839AC:  LDR.W           R0, [R9]; this
4839B0:  CBZ             R0, loc_483A18
4839B2:  LDR.W           R5, [R8]; CGenericGameStorage::_ms_WorkBuffer
4839B6:  CMP             R0, #4
4839B8:  BCS             loc_4839BE
4839BA:  MOVS            R2, #0
4839BC:  B               loc_483A0E
4839BE:  BIC.W           R2, R0, #3
4839C2:  CBZ             R2, loc_483A0C
4839C4:  VMOV            D18, D8
4839C8:  MOV             R3, R2
4839CA:  VMOV            Q8, Q4
4839CE:  MOV             R1, R5
4839D0:  VMOV.32         D18[0], R4
4839D4:  VMOV            D16, D18
4839D8:  LDR.W           R4, [R1],#4
4839DC:  SUBS            R3, #4
4839DE:  STR             R4, [SP,#0x30+var_2C]
4839E0:  VLD1.32         {D18[0]}, [R6@32]
4839E4:  VMOVL.U8        Q9, D18
4839E8:  VMOVL.U16       Q9, D18
4839EC:  VADD.I32        Q8, Q8, Q9
4839F0:  BNE             loc_4839D8
4839F2:  VEXT.8          Q9, Q8, Q8, #8
4839F6:  CMP             R0, R2
4839F8:  VADD.I32        Q8, Q8, Q9
4839FC:  VDUP.32         Q9, D16[1]
483A00:  VADD.I32        Q8, Q8, Q9
483A04:  VMOV.32         R4, D16[0]
483A08:  BNE             loc_483A0E
483A0A:  B               loc_483A18
483A0C:  MOVS            R2, #0
483A0E:  LDRB            R1, [R5,R2]
483A10:  ADDS            R2, #1
483A12:  CMP             R2, R0
483A14:  ADD             R4, R1
483A16:  BCC             loc_483A0E
483A18:  BLX             j__ZN19CGenericGameStorage14LoadWorkBufferEv; CGenericGameStorage::LoadWorkBuffer(void)
483A1C:  CMP             R0, #1
483A1E:  BEQ             loc_4839AC
483A20:  LDR             R0, =(PcSaveHelper_ptr - 0x483A26)
483A22:  ADD             R0, PC; PcSaveHelper_ptr
483A24:  LDR             R0, [R0]; PcSaveHelper
483A26:  LDR             R0, [R0]
483A28:  CBNZ            R0, loc_483A9E
483A2A:  LDR             R0, =(_ZN19CGenericGameStorage17ms_WorkBufferSizeE_ptr - 0x483A30)
483A2C:  ADD             R0, PC; _ZN19CGenericGameStorage17ms_WorkBufferSizeE_ptr
483A2E:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferSize ...
483A30:  LDR             R1, [R0]; CGenericGameStorage::ms_WorkBufferSize
483A32:  CMP             R1, #3
483A34:  BLS             loc_483A9E
483A36:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x483A3E)
483A38:  LDR             R2, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x483A40)
483A3A:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
483A3C:  ADD             R2, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
483A3E:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
483A40:  LDR             R2, [R2]; CGenericGameStorage::ms_WorkBuffer ...
483A42:  LDR             R0, [R0]; void *
483A44:  LDR             R2, [R2]; CGenericGameStorage::ms_WorkBuffer
483A46:  ADDS            R3, R0, R1
483A48:  SUBS            R1, #4
483A4A:  CMP             R0, #0
483A4C:  LDRB.W          R6, [R3,#-3]
483A50:  LDRB.W          R5, [R3,#-2]
483A54:  LDRB.W          R3, [R3,#-1]
483A58:  LDR.W           R8, [R2,R1]
483A5C:  SUB.W           R2, R4, R3
483A60:  SUB.W           R2, R2, R5
483A64:  LDRB            R1, [R0,R1]
483A66:  SUB.W           R2, R2, R6
483A6A:  SUB.W           R6, R2, R1
483A6E:  BEQ             loc_483A88
483A70:  BLX             _ZdaPv; operator delete[](void *)
483A74:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x483A7E)
483A76:  MOVS            R2, #0
483A78:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x483A80)
483A7A:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
483A7C:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
483A7E:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
483A80:  LDR             R1, [R1]; unsigned int
483A82:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
483A84:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
483A88:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x483A8E)
483A8A:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
483A8C:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
483A8E:  LDR             R0, [R0]; this
483A90:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
483A94:  MOVS            R4, #0
483A96:  CMP             R6, R8
483A98:  IT EQ
483A9A:  MOVEQ           R4, #1
483A9C:  B               loc_483ACE
483A9E:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x483AA4)
483AA0:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
483AA2:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
483AA4:  LDR             R0, [R0]; void *
483AA6:  CBZ             R0, loc_483AC0
483AA8:  BLX             _ZdaPv; operator delete[](void *)
483AAC:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x483AB6)
483AAE:  MOVS            R2, #0
483AB0:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x483AB8)
483AB2:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
483AB4:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
483AB6:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
483AB8:  LDR             R1, [R1]; unsigned int
483ABA:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
483ABC:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
483AC0:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x483AC6)
483AC2:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
483AC4:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
483AC6:  LDR             R0, [R0]; this
483AC8:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
483ACC:  MOVS            R4, #0
483ACE:  MOV             R0, R4
483AD0:  ADD             SP, SP, #8
483AD2:  VPOP            {D8-D9}
483AD6:  POP.W           {R8,R9,R11}
483ADA:  POP             {R4-R7,PC}
