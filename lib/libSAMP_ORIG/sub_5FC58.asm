; =========================================================
; Game Engine Function: sub_5FC58
; Address            : 0x5FC58 - 0x5FD08
; =========================================================

5FC58:  PUSH            {R4,R6,R7,LR}
5FC5A:  ADD             R7, SP, #8
5FC5C:  MOV             R4, R0
5FC5E:  LDRB.W          R0, [R0,#0x84]
5FC62:  LSLS            R0, R0, #0x1F
5FC64:  ITT NE
5FC66:  LDRNE.W         R0, [R4,#0x8C]; void *
5FC6A:  BLXNE           j__ZdlPv; operator delete(void *)
5FC6E:  LDRB.W          R0, [R4,#0x78]
5FC72:  LSLS            R0, R0, #0x1F
5FC74:  ITT NE
5FC76:  LDRNE.W         R0, [R4,#0x80]; void *
5FC7A:  BLXNE           j__ZdlPv; operator delete(void *)
5FC7E:  LDRB.W          R0, [R4,#0x6C]
5FC82:  LSLS            R0, R0, #0x1F
5FC84:  ITT NE
5FC86:  LDRNE           R0, [R4,#0x74]; void *
5FC88:  BLXNE           j__ZdlPv; operator delete(void *)
5FC8C:  LDRB.W          R0, [R4,#0x60]
5FC90:  LSLS            R0, R0, #0x1F
5FC92:  ITT NE
5FC94:  LDRNE           R0, [R4,#0x68]; void *
5FC96:  BLXNE           j__ZdlPv; operator delete(void *)
5FC9A:  LDRB.W          R0, [R4,#0x54]
5FC9E:  LSLS            R0, R0, #0x1F
5FCA0:  ITT NE
5FCA2:  LDRNE           R0, [R4,#0x5C]; void *
5FCA4:  BLXNE           j__ZdlPv; operator delete(void *)
5FCA8:  LDRB.W          R0, [R4,#0x48]
5FCAC:  LSLS            R0, R0, #0x1F
5FCAE:  ITT NE
5FCB0:  LDRNE           R0, [R4,#0x50]; void *
5FCB2:  BLXNE           j__ZdlPv; operator delete(void *)
5FCB6:  LDRB.W          R0, [R4,#0x3C]
5FCBA:  LSLS            R0, R0, #0x1F
5FCBC:  ITT NE
5FCBE:  LDRNE           R0, [R4,#0x44]; void *
5FCC0:  BLXNE           j__ZdlPv; operator delete(void *)
5FCC4:  LDRB.W          R0, [R4,#0x30]
5FCC8:  LSLS            R0, R0, #0x1F
5FCCA:  ITT NE
5FCCC:  LDRNE           R0, [R4,#0x38]; void *
5FCCE:  BLXNE           j__ZdlPv; operator delete(void *)
5FCD2:  LDRB.W          R0, [R4,#0x24]
5FCD6:  LSLS            R0, R0, #0x1F
5FCD8:  ITT NE
5FCDA:  LDRNE           R0, [R4,#0x2C]; void *
5FCDC:  BLXNE           j__ZdlPv; operator delete(void *)
5FCE0:  LDRB            R0, [R4,#0x18]
5FCE2:  LSLS            R0, R0, #0x1F
5FCE4:  ITT NE
5FCE6:  LDRNE           R0, [R4,#0x20]; void *
5FCE8:  BLXNE           j__ZdlPv; operator delete(void *)
5FCEC:  LDRB            R0, [R4,#0xC]
5FCEE:  LSLS            R0, R0, #0x1F
5FCF0:  ITT NE
5FCF2:  LDRNE           R0, [R4,#0x14]; void *
5FCF4:  BLXNE           j__ZdlPv; operator delete(void *)
5FCF8:  LDRB            R0, [R4]
5FCFA:  LSLS            R0, R0, #0x1F
5FCFC:  ITT NE
5FCFE:  LDRNE           R0, [R4,#8]; void *
5FD00:  BLXNE           j__ZdlPv; operator delete(void *)
5FD04:  MOV             R0, R4
5FD06:  POP             {R4,R6,R7,PC}
