; =========================================================
; Game Engine Function: sub_161BC0
; Address            : 0x161BC0 - 0x161CA8
; =========================================================

161BC0:  PUSH            {R7,LR}
161BC2:  MOV             R7, SP
161BC4:  SUB             SP, SP, #8
161BC6:  LDR             R1, =(byte_8F794 - 0x161BD0)
161BC8:  MOVS            R0, #3; int
161BCA:  MOVS            R2, #0
161BCC:  ADD             R1, PC; byte_8F794 ; text
161BCE:  BL              sub_ED4F8
161BD2:  LDR             R1, =(aStuff - 0x161BDC); "================== STUFF =============="... ...
161BD4:  MOVS            R0, #3; int
161BD6:  MOVS            R2, #0x2B ; '+'
161BD8:  ADD             R1, PC; "================== STUFF =============="...
161BDA:  BL              sub_ED4F8
161BDE:  LDR             R0, =(off_2349CC - 0x161BE8)
161BE0:  MOVS            R2, #0x17
161BE2:  LDR             R1, =(aLastRenderedMo - 0x161BEA); "Last rendered model: {}" ...
161BE4:  ADD             R0, PC; off_2349CC
161BE6:  ADD             R1, PC; "Last rendered model: {}"
161BE8:  LDR             R3, [R0]; word_247566
161BEA:  MOVS            R0, #3
161BEC:  BL              sub_11D978
161BF0:  LDR             R0, =(off_2349D0 - 0x161BFA)
161BF2:  MOVS            R2, #0x17
161BF4:  LDR             R1, =(aLastTextureLoa - 0x161BFC); "Last texture loaded: {}" ...
161BF6:  ADD             R0, PC; off_2349D0
161BF8:  ADD             R1, PC; "Last texture loaded: {}"
161BFA:  LDR             R3, [R0]; dword_25AE80
161BFC:  MOVS            R0, #3
161BFE:  BL              sub_126EC4
161C02:  LDR             R0, =(off_2349D4 - 0x161C0A)
161C04:  LDR             R2, =(off_2349D8 - 0x161C0E)
161C06:  ADD             R0, PC; off_2349D4
161C08:  LDR             R1, =(aLastRemovedObj - 0x161C12); "Last removed object: {}({})" ...
161C0A:  ADD             R2, PC; off_2349D8
161C0C:  LDR             R3, [R0]; word_25B1D2
161C0E:  ADD             R1, PC; "Last removed object: {}({})"
161C10:  LDR             R0, [R2]; byte_25B1D0
161C12:  MOVS            R2, #0x1B
161C14:  STR             R0, [SP,#0x10+var_10]
161C16:  MOVS            R0, #3
161C18:  BL              sub_161D0C
161C1C:  LDR             R0, =(off_234B08 - 0x161C26)
161C1E:  MOVS            R2, #0x19
161C20:  LDR             R1, =(aLastTextdrawTe - 0x161C28); "Last textdraw texture: {}" ...
161C22:  ADD             R0, PC; off_234B08
161C24:  ADD             R1, PC; "Last textdraw texture: {}"
161C26:  LDR             R3, [R0]; dword_25DAD8
161C28:  MOVS            R0, #3
161C2A:  BL              sub_126EC4
161C2E:  LDR             R0, =(off_234B0C - 0x161C38)
161C30:  MOVS            R2, #0x17
161C32:  LDR             R1, =(aLastCreateVehi - 0x161C3A); "Last create vehicle: {}" ...
161C34:  ADD             R0, PC; off_234B0C
161C36:  ADD             R1, PC; "Last create vehicle: {}"
161C38:  LDR             R3, [R0]; word_263040
161C3A:  MOVS            R0, #3
161C3C:  BL              sub_11D978
161C40:  LDR             R0, =(off_234B10 - 0x161C4A)
161C42:  MOVS            R2, #0x18
161C44:  LDR             R1, =(aLastDestroyVeh - 0x161C4C); "Last destroy vehicle: {}" ...
161C46:  ADD             R0, PC; off_234B10
161C48:  ADD             R1, PC; "Last destroy vehicle: {}"
161C4A:  LDR             R3, [R0]; word_263042
161C4C:  MOVS            R0, #3
161C4E:  BL              sub_11D978
161C52:  LDR             R0, =(off_234AEC - 0x161C5C)
161C54:  MOVS            R2, #0x16
161C56:  LDR             R1, =(aLastCreateObje - 0x161C5E); "Last create object: {}" ...
161C58:  ADD             R0, PC; off_234AEC
161C5A:  ADD             R1, PC; "Last create object: {}"
161C5C:  LDR             R3, [R0]; word_25B200
161C5E:  MOVS            R0, #3
161C60:  BL              sub_11D978
161C64:  LDR             R0, =(off_234AF0 - 0x161C6E)
161C66:  MOVS            R2, #0x17
161C68:  LDR             R1, =(aLastDestroyObj - 0x161C70); "Last destroy object: {}" ...
161C6A:  ADD             R0, PC; off_234AF0
161C6C:  ADD             R1, PC; "Last destroy object: {}"
161C6E:  LDR             R3, [R0]; word_25B202
161C70:  MOVS            R0, #3
161C72:  BL              sub_11D978
161C76:  LDR             R0, =(off_234B64 - 0x161C7E)
161C78:  LDR             R2, =(off_234B68 - 0x161C82)
161C7A:  ADD             R0, PC; off_234B64
161C7C:  LDR             R1, =(aLastLoadFullTe - 0x161C86); "Last load full texture: db={}, entry={}" ...
161C7E:  ADD             R2, PC; off_234B68
161C80:  LDR             R3, [R0]; dword_263960
161C82:  ADD             R1, PC; "Last load full texture: db={}, entry={}"
161C84:  LDR             R0, [R2]; dword_26396C
161C86:  MOVS            R2, #0x27 ; '''
161C88:  STR             R0, [SP,#0x10+var_10]
161C8A:  MOVS            R0, #3
161C8C:  BL              sub_161DE4
161C90:  LDR             R0, =(off_234AD0 - 0x161C9A)
161C92:  MOVS            R2, #0x15
161C94:  LDR             R1, =(aLastUnloadMode - 0x161C9C); "Last unload model: {}" ...
161C96:  ADD             R0, PC; off_234AD0
161C98:  ADD             R1, PC; "Last unload model: {}"
161C9A:  LDR             R3, [R0]; dword_25AEAC
161C9C:  MOVS            R0, #3
161C9E:  BL              sub_126FA8
161CA2:  MOVS            R0, #2
161CA4:  ADD             SP, SP, #8
161CA6:  POP             {R7,PC}
