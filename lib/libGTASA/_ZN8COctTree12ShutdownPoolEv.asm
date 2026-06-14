; =========================================================
; Game Engine Function: _ZN8COctTree12ShutdownPoolEv
; Address            : 0x45C164 - 0x45C1AA
; =========================================================

45C164:  LDR             R0, =(dword_9ABF40 - 0x45C16A)
45C166:  ADD             R0, PC; dword_9ABF40
45C168:  LDR             R0, [R0,#(dword_9ABF48 - 0x9ABF40)]
45C16A:  CMP             R0, #1
45C16C:  IT LT
45C16E:  BXLT            LR
45C170:  PUSH            {R7,LR}
45C172:  MOV             R7, SP
45C174:  LDR             R0, =(dword_9ABF40 - 0x45C17A)
45C176:  ADD             R0, PC; dword_9ABF40
45C178:  LDRB            R0, [R0,#(byte_9ABF50 - 0x9ABF40)]
45C17A:  CBZ             R0, loc_45C198
45C17C:  LDR             R0, =(dword_9ABF40 - 0x45C182)
45C17E:  ADD             R0, PC; dword_9ABF40
45C180:  LDR             R0, [R0]; void *
45C182:  CMP             R0, #0
45C184:  IT NE
45C186:  BLXNE           _ZdaPv; operator delete[](void *)
45C18A:  LDR             R0, =(dword_9ABF40 - 0x45C190)
45C18C:  ADD             R0, PC; dword_9ABF40
45C18E:  LDR             R0, [R0,#(dword_9ABF44 - 0x9ABF40)]; void *
45C190:  CMP             R0, #0
45C192:  IT NE
45C194:  BLXNE           _ZdaPv; operator delete[](void *)
45C198:  LDR             R0, =(dword_9ABF40 - 0x45C1A2)
45C19A:  VMOV.I32        Q8, #0
45C19E:  ADD             R0, PC; dword_9ABF40
45C1A0:  VST1.64         {D16-D17}, [R0]
45C1A4:  POP.W           {R7,LR}
45C1A8:  BX              LR
