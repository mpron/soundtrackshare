 c l a s s   T a g s C o n t r o l l e r   <   A p p l i c a t i o n C o n t r o l l e r 
     d e f   n e w 
         @ t a g   =   T a g . n e w 
         a u t h o r i z e !   : c r e a t e ,   @ t a g ,   m e s s a g e :   " Y o u   n e e d   b e   a n   a d m i n . " 
     e n d 
 
     d e f   s h o w 
         @ t a g   =   T a g . f i n d _ b y _ n a m e ( p a r a m s [ : t a g n a m e ] ) 
         @ p o s t s   =   @ t a g . p o s t s 
     e n d 
 
     d e f   c r e a t e 
         @ t a g   =   T a g . n e w ( p a r a m s [ : t a g ] ) 
         a u t h o r i z e !   : c r e a t e ,   @ p o s t ,   m e s s a g e :   " Y o u   n e e d   b e   a n   a d m i n . " 
         i f   @ t a g . s a v e 
             f l a s h [ : n o t i c e ]   =   " T a g   w a s   s a v e d   s u c c e s s f u l l y . " 
             r e d i r e c t _ t o   t a g _ n e w _ p a t h 
         e l s e 
             f l a s h [ : e r r o r ]   =   " E r r o r   c r e a t i n g   t a g .   P l e a s e   t r y   a g a i n . " 
             r e n d e r   : n e w 
         e n d 
     e n d 
 e n d 
