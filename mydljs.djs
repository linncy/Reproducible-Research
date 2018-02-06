\begingroup\efdlspecials
\isdljstrue
\makeatletter
\obeyspaces\obeylines\let^^M=\jsR%
\catcode`\"=12%
\gdef\dljsmydljsiii{%
function HelloWorld() {app.alert("\tugHello", 3); }
}%
\endgroup
\begingroup 
\catcode`\<=12 
\catcode`\>=12 
\ccpdftex%
\input{dljscc.def}%
\immediate\pdfobj{ << /S/JavaScript/JS(\dljsmydljsiii) >> }
\xdef\objmydljsiii{\the\pdflastobj\space0 R}
\endgroup 
