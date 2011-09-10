%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Credentials class, v1.0
%%%
%%% Written by Jason "s1n" Switzer - s1n@voidreturn.com (9/1/2011).
%%%
%%% Licensed under the terms of the MIT License.
%%%
%%% Features:
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%setup class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{credentials}[2011/09/01 v1 Credentials class]
\DeclareOption*{\PassOptionToClass{\CurrentOption}{scrartcl}}
\ProcessOptions
\LoadClass{scrartcl}

%pull in packages and setup each package as needed
%fix the links so they are both printable and clickable.
\usepackage{hyperref}
\usepackage[usenames,dvipsnames]{color}
\definecolor{LinkColor}{RGB}{8,8,135}
\hypersetup{
   colorlinks,
   citecolor=black,
   filecolor=black,
   linkcolor=black,
   urlcolor=LinkColor
}
\urlstyle{same}

\usepackage[lmargin=1.5cm, rmargin=2.5cm, tmargin=1.5cm, bmargin=1.5cm, noheadfoot]{geometry}
\usepackage{parcolumns}
\usepackage{lipsum}
\usepackage[mathscr]{euscript}
\usepackage[T1]{fontenc}
\usepackage{enumitem}
\usepackage{textcomp}
\usepackage{array}
\usepackage{multirow}

\setlength{\parindent}{0pt}
\setlength{\parskip}{\baselineskip}
\setlength{\parsep}{0in}
\pagestyle{empty}

%setup the commands for the fonts used throughout (change via \renewcommand)
\newcommand{\authorfont}{\sc\bfseries\Huge}
\newcommand{\subheaderfont}{}
\newcommand{\categoryfont}{\sc\bfseries}
\newcommand{\datefont}{\it\small}

\newcommand{\expert}[1]{\mdseries\itshape{#1}}
\newcommand{\citembullet}{$\diamond$}
\newcommand{\career}{Career Title}
\newcommand{\email}{email@example.com}
\newcommand{\website}{http://www.example.com}


\gdef\@author{\ClassError{credentials}{%
   Unknown Author}{%
   Use \protect\author\space to set it.}}

\renewcommand{\maketitle}[1]{%
   \begin{center}
      \begin{tabular}{#1}
         \multicolumn{3}{c}{{\authorfont\@author}}\tabularnewline
         {\subheaderfont \career} & {\subheaderfont \email} & {\subheaderfont \website} \centering{}\tabularnewline
      \end{tabular}
   \end{center}
}

\newenvironment{content}%
{\begin{parcolumns}[rulebetween=false,colwidths={1=.12\linewidth,3=0.10\linewidth},nofirstindent]{3}}% starting content
{\end{parcolumns}}% ending content

\newenvironment{category}[3]% 
{\colchunk[1]{#1}\colchunk[2]{#2}\colchunk[3]{#3}}%
{\colplacechunks}
