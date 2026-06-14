; =========================================================
; Game Engine Function: _ZN11CPopulation30LoadSpecificDriverModelsForCarEi
; Address            : 0x4D0F7C - 0x4D100A
; =========================================================

4D0F7C:  PUSH            {R7,LR}
4D0F7E:  MOV             R7, SP
4D0F80:  SUBW            R0, R0, #0x199; switch 73 cases
4D0F84:  CMP             R0, #0x48 ; 'H'
4D0F86:  IT HI
4D0F88:  POPHI           {R7,PC}
4D0F8A:  TBB.W           [PC,R0]; switch jump
4D0F8E:  DCB 0x28; jump table for switch statement
4D0F8F:  DCB 0x3D
4D0F90:  DCB 0x3D
4D0F91:  DCB 0x3D
4D0F92:  DCB 0x3D
4D0F93:  DCB 0x3D
4D0F94:  DCB 0x3D
4D0F95:  DCB 0x3D
4D0F96:  DCB 0x3D
4D0F97:  DCB 0x3D
4D0F98:  DCB 0x3D
4D0F99:  DCB 0x25
4D0F9A:  DCB 0x3D
4D0F9B:  DCB 0x3D
4D0F9C:  DCB 0x2A
4D0F9D:  DCB 0x3D
4D0F9E:  DCB 0x3D
4D0F9F:  DCB 0x3D
4D0FA0:  DCB 0x3D
4D0FA1:  DCB 0x2D
4D0FA2:  DCB 0x3D
4D0FA3:  DCB 0x3D
4D0FA4:  DCB 0x3D
4D0FA5:  DCB 0x3D
4D0FA6:  DCB 0x3D
4D0FA7:  DCB 0x3D
4D0FA8:  DCB 0x3D
4D0FA9:  DCB 0x3D
4D0FAA:  DCB 0x3D
4D0FAB:  DCB 0x25
4D0FAC:  DCB 0x3D
4D0FAD:  DCB 0x3D
4D0FAE:  DCB 0x3D
4D0FAF:  DCB 0x3D
4D0FB0:  DCB 0x3D
4D0FB1:  DCB 0x3D
4D0FB2:  DCB 0x3D
4D0FB3:  DCB 0x3D
4D0FB4:  DCB 0x3D
4D0FB5:  DCB 0x2F
4D0FB6:  DCB 0x3D
4D0FB7:  DCB 0x3D
4D0FB8:  DCB 0x3D
4D0FB9:  DCB 0x3D
4D0FBA:  DCB 0x3D
4D0FBB:  DCB 0x3D
4D0FBC:  DCB 0x3D
4D0FBD:  DCB 0x3D
4D0FBE:  DCB 0x3D
4D0FBF:  DCB 0x3D
4D0FC0:  DCB 0x3D
4D0FC1:  DCB 0x3D
4D0FC2:  DCB 0x3D
4D0FC3:  DCB 0x3D
4D0FC4:  DCB 0x31
4D0FC5:  DCB 0x3D
4D0FC6:  DCB 0x3D
4D0FC7:  DCB 0x3D
4D0FC8:  DCB 0x3D
4D0FC9:  DCB 0x3D
4D0FCA:  DCB 0x3D
4D0FCB:  DCB 0x3D
4D0FCC:  DCB 0x3D
4D0FCD:  DCB 0x3D
4D0FCE:  DCB 0x3D
4D0FCF:  DCB 0x3D
4D0FD0:  DCB 0x3D
4D0FD1:  DCB 0x3D
4D0FD2:  DCB 0x3D
4D0FD3:  DCB 0x3D
4D0FD4:  DCB 0x3D
4D0FD5:  DCB 0x3D
4D0FD6:  DCB 0x37
4D0FD7:  ALIGN 2
4D0FD8:  BLX             j__ZN10CStreaming24GetDefaultCabDriverModelEv; jumptable 004D0F8A cases 420,438
4D0FDC:  B               loc_4D0FFE
4D0FDE:  MOVS            R0, #0xFF; jumptable 004D0F8A case 409
4D0FE0:  B               loc_4D0FFE
4D0FE2:  MOV.W           R0, #0x108; jumptable 004D0F8A case 423
4D0FE6:  B               loc_4D0FFE
4D0FE8:  MOVS            R0, #0x47 ; 'G'; jumptable 004D0F8A case 428
4D0FEA:  B               loc_4D0FFE
4D0FEC:  MOVS            R0, #0x9B; jumptable 004D0F8A case 448
4D0FEE:  B               loc_4D0FFE
4D0FF0:  MOVS            R0, #(elf_hash_nbucket+3); jumptable 004D0F8A case 463
4D0FF2:  MOVS            R1, #0xA; int
4D0FF4:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
4D0FF8:  MOVS            R0, #0xF8
4D0FFA:  B               loc_4D0FFE
4D0FFC:  MOVS            R0, #(dword_14+3); jumptable 004D0F8A case 481
4D0FFE:  MOVS            R1, #0xA; int
4D1000:  POP.W           {R7,LR}
4D1004:  B.W             j_j__ZN10CStreaming12RequestModelEii; j_CStreaming::RequestModel(int,int)
4D1008:  POP             {R7,PC}; jumptable 004D0F8A cases 410-419,421,422,424-427,429-437,439-447,449-462,464-480
