; =========================================================
; Game Engine Function: sub_7C0F8
; Address            : 0x7C0F8 - 0x7C304
; =========================================================

7C0F8:  LDR             R1, =(unk_116D48 - 0x7C106)
7C0FA:  VMOV.F32        S8, #0.5
7C0FE:  VLDR            S2, [R0]
7C102:  ADD             R1, PC; unk_116D48
7C104:  VLDR            S0, [R0,#4]
7C108:  VLDR            S4, [R1]
7C10C:  VLDR            S6, [R1,#4]
7C110:  VDIV.F32        S2, S2, S4
7C114:  LDR             R1, =(unk_116D68 - 0x7C11A)
7C116:  ADD             R1, PC; unk_116D68
7C118:  VDIV.F32        S0, S0, S6
7C11C:  VLDR            S4, [R1]
7C120:  VLDR            S6, [R1,#4]
7C124:  VMUL.F32        S4, S2, S4
7C128:  LDR             R2, =(unk_116D50 - 0x7C134)
7C12A:  VMUL.F32        S6, S0, S6
7C12E:  LDR             R3, =(off_114C18 - 0x7C136)
7C130:  ADD             R2, PC; unk_116D50
7C132:  ADD             R3, PC; off_114C18
7C134:  VSTR            S0, [R2,#4]
7C138:  VSTR            S2, [R2]
7C13C:  VSTR            S4, [R1]
7C140:  VSTR            S6, [R1,#4]
7C144:  VLDR            S10, [R0,#4]
7C148:  VLDR            S12, [R0]
7C14C:  VMUL.F32        S10, S10, S8
7C150:  LDR             R0, [R3]; unk_116D0C
7C152:  VMUL.F32        S12, S12, S8
7C156:  VLDR            S14, [R0]
7C15A:  LDR             R0, =(dword_116D58 - 0x7C174)
7C15C:  LDR             R1, =(unk_1A45E8 - 0x7C170)
7C15E:  VMUL.F32        S14, S0, S14
7C162:  LDR             R2, =(unk_116D70 - 0x7C172)
7C164:  VMLS.F32        S10, S6, S8
7C168:  VMLS.F32        S12, S4, S8
7C16C:  ADD             R1, PC; unk_1A45E8
7C16E:  ADD             R2, PC; unk_116D70
7C170:  ADD             R0, PC; dword_116D58
7C172:  VLDR            S4, [R2]
7C176:  VLDR            S6, [R2,#4]
7C17A:  VMUL.F32        S4, S2, S4
7C17E:  VSTR            S14, [R0]
7C182:  VMUL.F32        S6, S0, S6
7C186:  VSTR            S10, [R1,#4]
7C18A:  VSTR            S12, [R1]
7C18E:  LDR             R0, =(unk_116D78 - 0x7C194)
7C190:  ADD             R0, PC; unk_116D78
7C192:  VSTR            S4, [R2]
7C196:  VLDR            S4, [R0]
7C19A:  VSTR            S6, [R2,#4]
7C19E:  VLDR            S6, [R0,#4]
7C1A2:  VMUL.F32        S4, S2, S4
7C1A6:  LDR             R1, =(dword_116D80 - 0x7C1B0)
7C1A8:  VMUL.F32        S6, S0, S6
7C1AC:  ADD             R1, PC; dword_116D80
7C1AE:  VSTR            S4, [R0]
7C1B2:  VLDR            S4, [R1]
7C1B6:  VSTR            S6, [R0,#4]
7C1BA:  VLDR            S6, [R1,#4]
7C1BE:  VMUL.F32        S4, S2, S4
7C1C2:  LDR             R0, =(dword_116D88 - 0x7C1CC)
7C1C4:  VMUL.F32        S6, S0, S6
7C1C8:  ADD             R0, PC; dword_116D88
7C1CA:  VSTR            S4, [R1]
7C1CE:  VLDR            S4, [R0]
7C1D2:  VSTR            S6, [R1,#4]
7C1D6:  VLDR            S6, [R0,#4]
7C1DA:  VMUL.F32        S4, S2, S4
7C1DE:  LDR             R1, =(unk_116D90 - 0x7C1E8)
7C1E0:  VMUL.F32        S6, S0, S6
7C1E4:  ADD             R1, PC; unk_116D90
7C1E6:  VSTR            S4, [R0]
7C1EA:  VLDR            S4, [R1]
7C1EE:  VSTR            S6, [R0,#4]
7C1F2:  VLDR            S6, [R1,#4]
7C1F6:  VMUL.F32        S4, S2, S4
7C1FA:  LDR             R0, =(unk_116D98 - 0x7C204)
7C1FC:  VMUL.F32        S6, S0, S6
7C200:  ADD             R0, PC; unk_116D98
7C202:  VSTR            S4, [R1]
7C206:  VLDR            S4, [R0]
7C20A:  VSTR            S6, [R1,#4]
7C20E:  VLDR            S6, [R0,#4]
7C212:  VMUL.F32        S4, S2, S4
7C216:  LDR             R1, =(dword_116DC0 - 0x7C220)
7C218:  VMUL.F32        S6, S0, S6
7C21C:  ADD             R1, PC; dword_116DC0
7C21E:  VSTR            S4, [R0]
7C222:  VLDR            S4, [R1]
7C226:  VSTR            S6, [R0,#4]
7C22A:  VLDR            S6, [R1,#4]
7C22E:  VMUL.F32        S4, S2, S4
7C232:  LDR             R0, =(dword_116DC8 - 0x7C23C)
7C234:  VMUL.F32        S6, S0, S6
7C238:  ADD             R0, PC; dword_116DC8
7C23A:  VSTR            S4, [R1]
7C23E:  VLDR            S4, [R0]
7C242:  VSTR            S6, [R1,#4]
7C246:  VLDR            S6, [R0,#4]
7C24A:  VMUL.F32        S4, S2, S4
7C24E:  LDR             R1, =(dword_116DD0 - 0x7C258)
7C250:  VMUL.F32        S6, S0, S6
7C254:  ADD             R1, PC; dword_116DD0
7C256:  VSTR            S4, [R0]
7C25A:  VLDR            S4, [R1]
7C25E:  VSTR            S6, [R0,#4]
7C262:  VLDR            S6, [R1,#4]
7C266:  VMUL.F32        S4, S2, S4
7C26A:  LDR             R0, =(dword_116DD8 - 0x7C274)
7C26C:  VMUL.F32        S6, S0, S6
7C270:  ADD             R0, PC; dword_116DD8
7C272:  VSTR            S4, [R1]
7C276:  VLDR            S4, [R0]
7C27A:  VSTR            S6, [R1,#4]
7C27E:  VLDR            S6, [R0,#4]
7C282:  VMUL.F32        S4, S2, S4
7C286:  LDR             R1, =(dword_116DE0 - 0x7C290)
7C288:  VMUL.F32        S6, S0, S6
7C28C:  ADD             R1, PC; dword_116DE0
7C28E:  VSTR            S4, [R0]
7C292:  VLDR            S4, [R1]
7C296:  VSTR            S6, [R0,#4]
7C29A:  VLDR            S6, [R1,#4]
7C29E:  VMUL.F32        S4, S2, S4
7C2A2:  LDR             R0, =(dword_116DE8 - 0x7C2AC)
7C2A4:  VMUL.F32        S6, S0, S6
7C2A8:  ADD             R0, PC; dword_116DE8
7C2AA:  VSTR            S4, [R1]
7C2AE:  VLDR            S4, [R0]
7C2B2:  VSTR            S6, [R1,#4]
7C2B6:  VLDR            S6, [R0,#4]
7C2BA:  VMUL.F32        S4, S2, S4
7C2BE:  LDR             R1, =(dword_116DF0 - 0x7C2C8)
7C2C0:  VMUL.F32        S6, S0, S6
7C2C4:  ADD             R1, PC; dword_116DF0
7C2C6:  VSTR            S4, [R0]
7C2CA:  VLDR            S4, [R1]
7C2CE:  VSTR            S6, [R0,#4]
7C2D2:  VLDR            S6, [R1,#4]
7C2D6:  VMUL.F32        S4, S2, S4
7C2DA:  LDR             R0, =(dword_116DF8 - 0x7C2E4)
7C2DC:  VMUL.F32        S6, S0, S6
7C2E0:  ADD             R0, PC; dword_116DF8
7C2E2:  VSTR            S4, [R1]
7C2E6:  VLDR            S4, [R0]
7C2EA:  VSTR            S6, [R1,#4]
7C2EE:  VLDR            S6, [R0,#4]
7C2F2:  VMUL.F32        S2, S2, S4
7C2F6:  VMUL.F32        S0, S0, S6
7C2FA:  VSTR            S2, [R0]
7C2FE:  VSTR            S0, [R0,#4]
7C302:  BX              LR
