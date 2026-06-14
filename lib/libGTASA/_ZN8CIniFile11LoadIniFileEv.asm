; =========================================================
; Game Engine Function: _ZN8CIniFile11LoadIniFileEv
; Address            : 0x3F4D44 - 0x3F4DEE
; =========================================================

3F4D44:  PUSH            {R4-R7,LR}
3F4D46:  ADD             R7, SP, #0xC
3F4D48:  PUSH.W          {R8}
3F4D4C:  VPUSH           {D8-D9}
3F4D50:  LDR             R0, =(byte_61CD7E - 0x3F4D56)
3F4D52:  ADD             R0, PC; byte_61CD7E ; this
3F4D54:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
3F4D58:  ADR             R0, aGta3Ini; "gta3.ini"
3F4D5A:  ADR             R1, aR_3; "r"
3F4D5C:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
3F4D60:  MOV             R4, R0
3F4D62:  CBZ             R4, loc_3F4DD0
3F4D64:  LDR             R0, =(gString_ptr - 0x3F4D6C)
3F4D66:  MOVS            R2, #dword_C8; char *
3F4D68:  ADD             R0, PC; gString_ptr
3F4D6A:  LDR             R5, [R0]; gString
3F4D6C:  MOV             R0, R4; this
3F4D6E:  MOV             R1, R5; unsigned int
3F4D70:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
3F4D74:  LDR             R0, =(_ZN8CIniFile19PedNumberMultiplierE_ptr - 0x3F4D7E)
3F4D76:  ADR.W           R8, dword_3F4E0C
3F4D7A:  ADD             R0, PC; _ZN8CIniFile19PedNumberMultiplierE_ptr
3F4D7C:  MOV             R1, R8; format
3F4D7E:  LDR             R6, [R0]; CIniFile::PedNumberMultiplier ...
3F4D80:  MOV             R0, R5; s
3F4D82:  MOV             R2, R6
3F4D84:  BLX             sscanf
3F4D88:  VMOV.F32        S16, #0.5
3F4D8C:  VLDR            S0, [R6]
3F4D90:  VMOV.F32        S18, #3.0
3F4D94:  MOV             R0, R4; this
3F4D96:  MOV             R1, R5; unsigned int
3F4D98:  MOVS            R2, #dword_C8; char *
3F4D9A:  VMAX.F32        D16, D0, D8
3F4D9E:  VMIN.F32        D0, D16, D9
3F4DA2:  VSTR            S0, [R6]
3F4DA6:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
3F4DAA:  LDR             R0, =(_ZN8CIniFile19CarNumberMultiplierE_ptr - 0x3F4DB2)
3F4DAC:  MOV             R1, R8; format
3F4DAE:  ADD             R0, PC; _ZN8CIniFile19CarNumberMultiplierE_ptr
3F4DB0:  LDR             R6, [R0]; CIniFile::CarNumberMultiplier ...
3F4DB2:  MOV             R0, R5; s
3F4DB4:  MOV             R2, R6
3F4DB6:  BLX             sscanf
3F4DBA:  VLDR            S0, [R6]
3F4DBE:  MOV             R0, R4; this
3F4DC0:  VMAX.F32        D16, D0, D8
3F4DC4:  VMIN.F32        D0, D16, D9
3F4DC8:  VSTR            S0, [R6]
3F4DCC:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
3F4DD0:  LDR             R0, =(_ZN8CCarCtrl20MaxNumberOfCarsInUseE_ptr - 0x3F4DDA)
3F4DD2:  MOVS            R2, #0xC
3F4DD4:  LDR             R1, =(_ZN11CPopulation20MaxNumberOfPedsInUseE_ptr - 0x3F4DDC)
3F4DD6:  ADD             R0, PC; _ZN8CCarCtrl20MaxNumberOfCarsInUseE_ptr
3F4DD8:  ADD             R1, PC; _ZN11CPopulation20MaxNumberOfPedsInUseE_ptr
3F4DDA:  LDR             R0, [R0]; CCarCtrl::MaxNumberOfCarsInUse ...
3F4DDC:  LDR             R1, [R1]; CPopulation::MaxNumberOfPedsInUse ...
3F4DDE:  STR             R2, [R0]; CCarCtrl::MaxNumberOfCarsInUse
3F4DE0:  MOVS            R0, #0x19
3F4DE2:  STR             R0, [R1]; CPopulation::MaxNumberOfPedsInUse
3F4DE4:  VPOP            {D8-D9}
3F4DE8:  POP.W           {R8}
3F4DEC:  POP             {R4-R7,PC}
