   M S B A M L   `   `   `  ����D  @WPFTester, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:WPFTester	WPFTester  5   	   ;"clr-namespace:WPFTester.ConvertersWPFTester.Converters  5   	       WPFTester.View.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:WPFTester     5   	   3conv"clr-namespace:WPFTester.Converters     5   	   $	��300��5      $	��300��6'     � Title$  
MainWindow��5	   	      WindowBackgroundBrush#���   6    � 	Resources 5      2   ,WPFTester.Converters.YesNoToBooleanConverter  YesNoToBooleanConverter��%   &	         5      6#   5      .��5      �  � RowDefinitions 5      �� 5      $��* �6   �� 5      $��* �6   .+�5      �� $��10q�6   $��Center=�6   .+�5      �� -   5        $��txtTest��5      � 5      $
��0,10q�6   .+�5   
   �� $��Current value is: ��6   �� 5   
   ��6   ��  �� ElementName$ txtTest�� �� Path$
 Text� �� 	Converter# [ 5   	   �� 5      $	��Yes��6z    d� 	IsChecked 6   �� $ txtTest��$
 Text�# [ 6z   5      �� 5      $��1��6   
������  �� Orientation$ 
Horizontal=�67   $��Center=�6P   $��Center=�6m   $��60��6�   $	��180��6�    5        �� 
TargetType	 �� Property
 �� Value  HoverOff��%�   '��       �� 5"   
   " ��6   .�5#      �� 	 � ��

 ���� 6)   �� 5$      	 � ��$
 0q�6.   �� 5%      	 � ��#
 �  6'   5&      5'      5(   	   .+�5*      �� 
������$��2q�6(    �� CornerRadius$ 	25,0,0,25��6<   $��60��6U   $��65��6a   ��5+   
   �� 5,      " ��6   .�5-      �� 	 � ��

 �����6+    �� Triggers 5.      �� 5/       �� Binding 6   �� $ btnDec��$ IsMouseOver� �� Value True6U   .a�50      �� 	 � ��  TransparentBack#
 �  6/   51      53      ._�55   
   �� -   5        $��btnDec��55      ��6   �� *DecKV+.��56      �� $/��)/WPFTester;component/View/minusbutton.png��6   $
��None=�6E   57      58   	   �� 5:      
�������
������$��2q�6;   $��60��6O   $��50��6[   ._�5;   
   �� -   5        $��txtValue��5;      $
��Bold"�69   $��25(�6K   $��Center=�6Y   $��Center=�6v   ��6$   �� *_KV+6v   5<   	   �� 5>      
������$��2q�6(   $ 	0,25,25,0��6<   $��60��6U   $��65��6a   ��5?   
   �� 5@      " ��6   .�5A      �� 	 � ��

 �����6+    5B      �� 5C       6   �� $ btnInc��$ IsMouseOver� True6U   .a�5D      �� 	 � ��#
 �  6/   5E      5G      ._�5I   
   �� -   5        $��btnInc��5I      ��6   �� *IncKV+.��5J      �� $.��(/WPFTester;component/View/plusbutton.png��6   $
��None=�6D   5K      5L   	   5N      5P      5R      