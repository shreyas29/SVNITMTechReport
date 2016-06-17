\ProvidesClass{SVNITPhDReport}
%						      Author	: Milind Padalkar (milind.padalkar@gmail.com)
%						   Thanks to 	: Ankur Dave's Tutorial
%	   Modified for M.Tech Report by 	: Shreyas Patel (shreyaspatel29@gmail.com) (P14CO018)
%					Last modified on 	: 22-11-2015
%						
%-----------------------------------------------
% Page border functionality added on 26-05-2012
% Use command \addpageborder before the page
% where you want the border to appear. Similarly
% use \clearpageborder before the page where you
% want normal pages without border.
% I suggest using \addpageborder before \maketitle,
% while using \clearpageborder before you begin
% your first chapter/section.
%-----------------------------------------------

\LoadClass[12pt]{report}

%User Created Fields
\makeatletter
\RequirePackage{ifthen}
	%\newcommand{name}[num of arg]{definition}
	\newcommand{\borderPath}[1]{\def \@borderPath {#1}}
	\newcommand{\semester}[1]{\def \@semester {#1}}
	\newcommand{\seminarType}[1]{\def \@seminarType {#1}}
	\newcommand{\seminarNo}[1]{\def \@seminarNo {#1}}
	\newcommand{\course}[1]{\def \@course {#1}}
	\newcommand{\instlogo}[1]{\def \@instlogo {#1}}
	\newcommand{\dept}[1]{\def \@dept {#1}}
	\newcommand{\supervisorI}[1]{\def \@supervisorI {#1}}
	\newcommand{\supervisorII}[1]{\def \@supervisorII {#1}}
	\newcommand{\stitleI}[1]{\def \@stitleI {#1}}	
	\newcommand{\stitleII}[1]{\def \@stitleII {#1}}	
	\newcommand{\hodtitle}[1]{\def \@hodtitle {#1}}	
	\newcommand{\hodname}[1]{\def \@hodname {#1}}	
	\newcommand{\sinstI}[1]{\def \@sinstI {#1}}		
	\newcommand{\sinstII}[1]{\def \@sinstII {#1}}		
	\newcommand{\scityI}[1]{\def \@scityI {#1}}		
	\newcommand{\scityII}[1]{\def \@scityII {#1}}		
	\newcommand{\stitleO}[1]{\def \@stitleO {#1}}		
	\newcommand{\supervisorO}[1]{\def \@supervisorO {#1}}
	\newcommand{\regno}[1]{\def \@regno {#1}}
	\newcommand{\addressInstN}[1]{\def \@addressInstN {#1}}
	\newcommand{\addressInstD}[1]{\def \@addressInstD {#1}}
	\newcommand{\addressInstP}[1]{\def \@addressInstP {#1}}
	\newcommand{\acMonth}[1]{\def \@acMonth {#1}}
	\newcommand{\acYear}[1]{\def \@acYear {#1}}
	\newcommand{\calYear}[1]{\def \@calYear {#1}}
	\newcommand{\atitle}[1]{
		\def \@atitle {#1}
		%To place "his" when "mr or Mr or mr. or Mr." else "her"
		\ifthenelse{\equal{#1}{Mr.}}{\def \person {his}}{\relax}
		\ifthenelse{\equal{#1}{Mr}}{\def \person {his}}{\relax}
		\ifthenelse{\equal{#1}{mr.}}{\def \person {his}}{\relax}
		\ifthenelse{\equal{#1}{mr}}{\def \person {his}}{\relax}
		\ifthenelse{\equal{#1}{Ms.}}{\def \person {her}}{\relax}
		\ifthenelse{\equal{#1}{Ms}}{\def \person {her}}{\relax}
		\ifthenelse{\equal{#1}{ms.}}{\def \person {her}}{\relax}
		\ifthenelse{\equal{#1}{ms}}{\def \person {her}}{\relax}
		\ifthenelse{\equal{#1}{Mrs.}}{\def \person {her}}{\relax}
		\ifthenelse{\equal{#1}{Mrs}}{\def \person {her}}{\relax}
		\ifthenelse{\equal{#1}{mrs.}}{\def \person {her}}{\relax}
		\ifthenelse{\equal{#1}{mrs}}{\def \person {her}}{\relax}
	}
	\borderPath{}
	\semester{}
	\seminarType{}
	\seminarNo{}
	\course{}
	\instlogo{}
	\dept{}
	\supervisorI{}
	\supervisorII{}
	\hodtitle{}
	\hodname{}
	\supervisorO{}
	\stitleI{}
	\stitleII{}
	\sinstI{}
	\sinstII{}
	\scityI{}
	\scityII{}
	\stitleO{}
	\regno{}
	\addressInstN{}
	\addressInstD{}
	\addressInstP{}
	\acMonth{}
	\acYear{}
	\calYear{}
	\atitle{}
\makeatother

%-----------------------------------
%		Loading Packages
%-----------------------------------
\usepackage{amsmath}
%\usepackage{array}	
%margins

\RequirePackage[a4paper]{geometry}
	%\geometry{vmargin={2.54cm,2.54cm},hmargin={3.17cm,3.17cm},includefoot}
	\geometry{vmargin={1in,1in},hmargin={1in,1in},includefoot}

%spacing
\RequirePackage{setspace}
	\setstretch{1.5}

%figures
\RequirePackage{graphicx}

%proper underlining
\RequirePackage[normalem]{ulem}

%For landscape page
\RequirePackage{lscape}
% Usage : \begin{landscape}\end{landscape}

%For Hyperlinks within the document
\RequirePackage[]{hyperref}
	\hypersetup{
	    colorlinks=false,
	    pdfborder={0 0 0},
	}

%%Colors
\RequirePackage{xcolor}
	\definecolor{white}{rgb}{1.0,1.0,1.0}
	\definecolor{black}{rgb}{0.0,0.0,0.0}
	\definecolor{bordercol}{rgb}{0.0,0.12,0.48}

% Package for special latin fonts
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

%For page borders using PSTRICKS
\RequirePackage{pst-node}% http://ctan.org/pkg/pstricks
\RequirePackage{eso-pic}% http://ctan.org/pkg/eso-pic

%Custom border page command
\makeatletter
\newcommand{\addpageborder}{%
	\AddToShipoutPictureBG{%
		\begin{pspicture}
			\includegraphics{./Figures/border.eps}			
		\end{pspicture}		
	}
}
%	\pagenumbering{roman}
%	\setcounter{page}{1}
\makeatother

% Clear border for a page
\newcommand{\clearpageborder}{
	\ClearShipoutPicture
%	\pagenumbering{arabic}
%	\setcounter{page}{1}
}

% For numbering subsubsections
\setcounter{secnumdepth}{3}

%fonts
\newcommand*{\monocor}[1]{\usefont{T1}{pzc}{m}{it}#1\normalfont} %similar to Monotype Corsiva (ZapfChancery)
\newcommand*{\timesnr}[1]{\usefont{T1}{ptm}{m}{n}#1\normalfont} %Times New Roman
\newcommand*{\helveticaf}[1]{\usefont{T1}{phv}{b}{n}#1\normalfont} %Helvetica Extra bold with caps
\newcommand*{\courierf}[1]{\usefont{T1}{pcr}{m}{n}#1\normalfont} %Courier
\newcommand*{\avantf}[1]{\usefont{T1}{pag}{m}{n}#1\normalfont} %Avant
\newcommand*{\centuryf}[1]{\usefont{T1}{pnc}{m}{n}#1\normalfont} %Century
\newcommand*{\concretef}[1]{\usefont{T1}{ccr}{m}{n}#1\normalfont} %Concrete

%empty page
\newcommand\blankpage{%
    \null
    \thispagestyle{empty}%
%    \addtocounter{page}{-1}%
    \newpage}

%-----------------------------------
%		Title Page
%-----------------------------------

\makeatletter
\def \maketitle{
%	\newgeometry{vmargin={1.54cm,1.54cm},hmargin={3.17cm,3.17cm}}
	\begin{titlepage}
		\begin{center}
			\vspace*{10pt}							
			%line1
			%\courierf{
			\timesnr{
				\textbf{					
					\Large
					\textcolor{black}{\expandafter \@seminarType}
					\normalsize
				}
			} \vspace*{-5pt}

			%line 2
			\timesnr{
				\parbox{0.65\textwidth}{
					\centering
						\textbf{
							\small
							\textcolor{black}{\expandafter\lowercase\expandafter{on}}					
							\normalsize
					}
				}
			} \vspace*{-5pt}

			%line 3
			%\courierf{
			\timesnr{
				\textbf{
					\Large
					\textcolor{black}{M Tech  Dissertation}
					\normalsize
				}
			} \\ \vspace*{-5pt}				

			%line4
			\timesnr{
				\parbox{0.65\textwidth}{
					\centering
					\textbf{
						\small
						\textcolor{black}{\expandafter\lowercase\expandafter{titled}}					
						\normalsize
					}
				}
			} \\ \vspace*{20pt}
				
			%line5,6
			\timesnr{
				\parbox{0.65\textwidth}{
					\centering
					\textbf{
						\Large
						\textcolor{black}{\expandafter\uppercase\expandafter{\@title}}
						\normalsize
					}
				}
			} \\ \vspace*{15pt}

			%line7
			\timesnr{
			\parbox{0.66\textwidth}{
			\centering
			\textbf{
			\small
			\textcolor{black}{\footnotesize Submitted in PARTIAL fulfilment towards the award of the degree of \normalsize } %\newline for \newline the award of the degree of \normalsize} 			
					%\centering for \newline  \centering the award of the degree of \normalsize}
				}
			} 
			} %\\ \vspace*{15pt}

			%line8	 	
		 	\timesnr{
		 		\parbox{0.65\textwidth}{
		 			\centering
		 	%		\fontsize{18mm}{18mm}\selectfont
		 			\textbf{
		 			\Huge
%		 			\textcolor{black}{{\textcalligra\monocor{\Huge Doctor of Philosophy}}}
		 			\textcolor{black}{{{\Large MASTERS OF TECHNOLOGY  }}}
		 					%\centering for \newline  \centering the award of the degree of \normalsize}
		 			}
		 		}
		 	}\\ \vspace*{5pt}

		 	%line9
			\timesnr{
		 		\parbox{0.65\textwidth}{
		 			\centering
		 	%		\fontsize{18mm}{18mm}\selectfont
		 			\textbf{
		 			\Huge
%		 			\textcolor{black}{{\textcalligra\monocor{\Huge Doctor of Philosophy}}}
		 			\textcolor{black}{\Large\expandafter\uppercase\expandafter{IN}}
		 					%\centering for \newline  \centering the award of the degree of \normalsize}
		 			}
		 		}
		 	}\\ \vspace*{5pt}
		 	
		 	%line10
			\timesnr{
		 		\parbox{0.65\textwidth}{
		 			\centering
		 	%		\fontsize{18mm}{18mm}\selectfont
		 			\textbf{
		 			\Huge
%		 			\textcolor{black}{{\textcalligra\monocor{\Huge Doctor of Philosophy}}}
		 			\textcolor{black}{{{\Large COMPUTER ENGINEERING }}}
		 					%\centering for \newline  \centering the award of the degree of \normalsize}
		 			}
		 		}
		 	}\\ \vspace*{10pt}

		 	%line11
			\timesnr{
				\textbf{
					\small
					\textcolor{black}{\uppercase{by}}
					\normalsize
				}
			} \\ \vspace*{-2pt}
			
			%line12,13
			
			\concretef{
				\textbf{
					\Large
					\textcolor{black}{\@atitle\ \@author 
					%({\expandafter\uppercase\expandafter{\@regno}}) % % 
					}
					\normalsize
				}
			} \\ \vspace*{10pt}
	
			%line14,15a,(15b)
			\timesnr{
				\textbf{
					\footnotesize
					\textcolor{black}{Supervisors}
					\normalsize
				}
			} \vspace*{-10pt}
			
			%line16
			\concretef{
				\textbf{
					\Large
					\textcolor{black}{\@stitleI\ \@supervisorI, \@sinstI, \@scityI\\ \hspace{5pt} \@stitleII\ \@supervisorII, \@sinstII, \@scityII }
					\normalsize
				}
			} \\ \vspace*{10pt}

			%line17
			\ifx \@instlogo \@empty
				\relax
			\else				
				\includegraphics[width=0.25\textwidth]{\@instlogo} 
			\fi					

			%line18
			\timesnr{
				\textbf{
					\large % % 
					\textcolor{black}{\@acYear}
					%\textcolor{black}{\@acMonth,\@calYear}
					\normalsize
				}
			 } \\ \vspace*{10pt}
			
			%line19
			\centuryf{
				\textbf{
					\Large
					\textcolor{black}{Department of \@dept}
					\normalsize
				}
			} \\ \vspace*{4pt}
			
			%line20
			\concretef{
				\parbox[c]{\textwidth}{ \centering
					\textbf{
						\Large
						\textcolor{black}{\expandafter\uppercase\expandafter{\@addressInstN}}
						\normalsize
					}
				}
			} \\ \vspace*{4pt}
			
			%line21
			\concretef{
				\parbox[c]{\textwidth}{ \centering
					\textbf{
						\Large
						\textcolor{black}{\expandafter\uppercase\expandafter{\@addressInstD},}
						\normalsize
					}
				}
			} \\ \vspace*{4pt}
			
			%line22
			\concretef{
				\parbox[c]{\textwidth}{ \centering
					\textbf{
						\Large
						\textcolor{black}{\expandafter\uppercase\expandafter{\@addressInstP}}
						\normalsize
					}
				}
			}
		\end{center}
	\end{titlepage}
	%\restoregeometry
	\newpage
}
\makeatother

%-----------------------------------
%		Table of Contents Page
%-----------------------------------

\makeatletter
%Set the title of the ToC page to "Table of Contents" from "Contents"
\def\tableofcontents{\section*{\centering \Large Table of Contents}\@starttoc{toc}}
% How many levels of section head would you like to appear in the
%  Table of Contents?
%  0= chapter titles, 1= section titles, 2= subsection titles, 
%  3= subsubsection titles.
\setcounter{tocdepth}{3}
\newcommand{\bordertoc}{
			\tableofcontents
			\newpage
}
\def\l@chapter#1#2{{ 
	 \vspace*{10pt}
    \@dottedtocline{0}{0em}{1.2em}{\textbf{#1}}{\textbf{#2}}}} 
\def\l@spchapter#1#2{{
	\vspace*{10pt}
    \@dottedtocline{0}{0em}{1.2em}{\textbf{#1}}{\textbf{#2}}}}
\def\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\def\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\def\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\def\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{5}{13em}{5.8em}}
\makeatother

%-----------------------------------
%		List of figures Page
%-----------------------------------

\makeatletter
\def\listoffigures{\section*{\centering \Large List of Figures}\@starttoc{lof}}
\newcommand{\borderlof}{
			\listoffigures
			\newpage
}
\makeatother

%-----------------------------------
%		List of Tables Page
%-----------------------------------

\makeatletter
\def\listoftables{\section*{\centering \Large List of Tables}\@starttoc{lot}}
\newcommand{\borderlot}{		
			\listoftables
			\newpage
}
\makeatother

%-----------------------------------
%		Chapter Head settings
%-----------------------------------
\makeatletter
\renewcommand{\@makechapterhead}[1]{%
	\vspace*{50\p@}%
  	{\parindent \z@ \raggedleft \normalfont
    	\ifnum \c@secnumdepth >\m@ne
        	\huge\bfseries \@chapapp\space \textbf{\thechapter}
        	\par\nobreak
        	\vskip 20\p@
    	\fi
    	\interlinepenalty\@M
    	\Huge \bfseries \textbf{#1}\par\nobreak
    	\vskip 40\p@
  	}
}
\makeatother

%-----------------------------------
%		Table1(Admin) Page
%-----------------------------------

\makeatletter
\newcommand{\putTableAdmin}[1]{
		\newgeometry{vmargin={1.54cm,1.54cm},hmargin={3.17cm,3.17cm}}
		\begin{titlepage}
%			\pagenumbering{roman}
%	    	\setcounter{page}{2}		
			\begin{landscape}
%			\setlength{\textwidth}{9.7in}
%			\setlength{\textheight}{6.3in}
				\begin{center}
					\begin{LARGE}
						\expandafter\uline\expandafter{TABLE I : Details of the Seminars -- Administrative}
					\end{LARGE}
					\\ \vspace*{15pt}
					%\begin{large}
					{#1}
					%\end{large}
				\end{center}
			\end{landscape}
		\end{titlepage}
		\restoregeometry
			\newpage
}
\makeatother

%-----------------------------------
%Table2(Technical) Page
%-----------------------------------

\makeatletter
\newcommand{\putTableTech}[1]{
		%\newgeometry{vmargin={1.54cm,1.54cm},hmargin={3.17cm,3.17cm}}
		%\begin{titlepage}
		  	\setcounter{page}{3}
%			\hspace*{10pt}\parbox{0.90\textwidth}{
				\begin{center}
					\begin{LARGE}
						\expandafter\uline\expandafter{TABLE II : Details of the Seminars -- Technical}
					\end{LARGE}
					\\ \vspace*{35pt}
					%\begin{large}
					{#1}
					%\end{large}
				\end{center}
%			}
		%\end{titlepage}
%		\restoregeometry
			\newpage
}
\makeatother

%-----------------------------------
%		Decleration Page
%-----------------------------------

\makeatletter
\newcommand{\putdecleration}{
\hspace*{10pt}\parbox{0.90\textwidth}{
		\begin{center}
			\Large
				\underline{\textbf{Declaration}}
			\normalsize
		\end{center}
		\vspace*{20pt}
		\centuryf{	
				%\small
				\setstretch{2.5}
				\hspace*{15pt} I hereby declare that the work being presented in this dissertation PRELIMINARIES entitled ``\expandafter\uline\expandafter{\@title}'' by me i.e. \uline{\@atitle\ }\expandafter\uline\expandafter{\@author}, bearing Roll No: \expandafter\uppercase\expandafter{\expandafter\uline\expandafter{\@regno}} and submitted to the \@dept\ Department at \@addressInstN\ \@addressInstD, \@addressInstP; is an authentic record of my own work carried out during the period\expandafter\uppercase\expandafter{\expandafter\uline\expandafter{\@semester}} of July 2015 to November 2015 under the supervision of \expandafter\uline\expandafter{\@stitleI\@supervisorI} and \expandafter\uline\expandafter{\@stitleII\ \@supervisorII}.\\ \hspace*{15pt}
				\vspace*{10pt}			
		}		
		\\
		\makebox[150pt]{\hrulefill}		
		\\
		(\@author)
		\setstretch{1.5}		

		\vspace*{20pt} 
		
		\Large Supervised By
		%	Certified by
		\\ \vspace*{20pt} 
		\small

		%supervisor I		
		\begin{minipage}[l]{0.5\textwidth}
			\centuryf{
				\textbf{	
					\makebox[150pt]{\hrulefill} \\ \vspace*{-5pt}
					\@stitleI\ \@supervisorI\ \\ \vspace*{-5pt}
					Assistant Professor, \\ \vspace*{-5pt}
					Dept. of \@dept, \\ \vspace*{-5pt}
					S V \@addressInstD, \\ \vspace*{-5pt}
					\@addressInstP\ -- 395007, \\ \vspace*{-5pt}
					India \\ \vspace*{25pt} 					
				}
			}
		\end{minipage}				
		\begin{minipage}[r]{0.5\textwidth}		
			\centuryf{			
				\textbf{				
					\makebox[150pt]{\hrulefill} \\ \vspace*{-5pt}
					\@stitleII\ \@supervisorII\  \\ \vspace*{-5pt}
					Principal Technical Officer, \\ \vspace*{-5pt}
					Dept. of Electronics and IT, \\ \vspace*{-5pt}
					\@sinstII, \\ \vspace*{-5pt}
					\@scityII - 400049, \\ \vspace*{-5pt}
					India \\ \vspace*{25pt}
				}				
			}			
		\end{minipage}		

		%PG Incharge
		\begin{minipage}[l]{0.55\textwidth}
			\centuryf{
				\textbf{
					\makebox[150pt]{\hrulefill} \\ \vspace*{-5pt}
					PG Incharge, \\ \vspace*{-5pt}
					M Tech in \@dept, \\ \vspace*{-5pt}
					SVNIT - \@addressInstP\ \\
					\vspace*{-25pt}
				}
			}
		\end{minipage}

		\begin{minipage}[c]{\textwidth}
			\hfill
			\vspace*{1cm}
		\end{minipage}
		\begin{minipage}[l]{0.52\textwidth}
			\hfill
		\end{minipage}		
		\begin{minipage}[r]{0.55\textwidth}
			\centuryf{
				\textbf{
					\makebox[150pt]{\hrulefill} \\ \vspace*{-5pt}
					Head, \\ \vspace*{-5pt}
					Dept. of \@dept, \\ \vspace*{-5pt}
					S V \@addressInstD, \\ \vspace*{-5pt}
					\@addressInstP\ -- 395007, \\ \vspace*{-5pt}
					India
				}
			}
		\end{minipage}						
	}
	\newpage
}
\makeatother

%-----------------------------------
%		Certificate Page
%-----------------------------------

\makeatletter
\newcommand{\putcertificate}{
		
		\begin{figure}
			\begin{minipage}[l]{0.2\textwidth}		
				\makebox[150pt] \\ \vspace*{-5pt}				
					\includegraphics[width=.7\textwidth]{\@instlogo} 
			\end{minipage}				
			\begin{minipage}[r]{0.8\textwidth}		
				\centuryf{			
					\textbf{				
						\makebox[150pt] \\ \vspace*{-5pt}
							\begin{flushleft}
								Sardar Vallabhbhai National Institute of Technology,\\
								Surat-395007, Gujarat, India
							\end{flushleft}
					}				
				}			
			\end{minipage}		
		\end{figure}	

		\begin{center}
			\Large
				\centuryf{
					\underline{
						\textbf{
							\uppercase{c\ e\ r\ t\ i\ f\ i\ c\ a\ t\ e}
						}
					}
				}
			\normalsize
		\end{center}
		\vspace*{20pt}		
		\centuryf{					
			\textbf{					
				\hspace*{20pt}This is to certify that the dissertation report entitled ``\expandafter\uppercase\expandafter{\expandafter\uline\expandafter{\@title}}'' is prepared and presented by \uline{\@atitle\ }\expandafter\uppercase\expandafter{\expandafter\uline\expandafter{\@author}} bearing Roll No: \expandafter\uppercase\expandafter{\expandafter\uline\expandafter{\@regno}}, 2nd Year of M.Tech (Computer Engineering) and his work is satisfactory.
				\vspace*{150pt} \\
				\Large							
			}
		}

		\normalsize		
		\setstretch{1.5}		
		\begin{minipage}[l]{0.3\textwidth}							
			\centuryf{
				\textbf{			
					\begin{center}
						SUPERVISOR \newline
						\@stitleI \@supervisorI \newline
						\@stitleI \@supervisorII 					
					\end{center}
				}
			}
		\end{minipage}				
		\begin{minipage}[c]{.4\textwidth}						
			\centuryf{
				\textbf{
					\begin{center}								
						JURY \newline \newline 
					\end{center}
				}
			}
		\end{minipage}
		\begin{minipage}[r]{.3\textwidth}									
				\centuryf{
					\textbf{
						\begin{center}					
							HEAD OF DEPT. \newline
							Prof. D. R. Patel \newline
						\end{center}					
					}
				}					
		\end{minipage}									
	\newpage
}
\makeatother

%-----------------------------------
%	New Certificate Page
%-----------------------------------

\makeatletter
\newcommand{\putnewcertificate}{
		
		\begin{figure}
			\begin{minipage}[l]{0.2\textwidth}		
				\makebox[150pt] \\ \vspace*{-5pt}				
					\includegraphics[width=.7\textwidth]{\@instlogo} 
			\end{minipage}				
			\begin{minipage}[r]{0.8\textwidth}		
				\centuryf{			
					\textbf{				
						\makebox[150pt] \\ \vspace*{-5pt}
							\begin{flushleft}
								Sardar Vallabhbhai National Institute of Technology,\\
								Surat-395007, Gujarat, India
							\end{flushleft}
					}				
				}			
			\end{minipage}		
		\end{figure}	

		\begin{center}
			\Large
				\centuryf{
					\underline{
						\textbf{
							\uppercase{c\ e\ r\ t\ i\ f\ i\ c\ a\ t\ e}
						}
					}
				}
			\normalsize
		\end{center}
		\vspace*{20pt}		
		\Large		
				
		\onehalfspacing		
		\setstretch{2.0}					
		
		\monocor{This is to certify that report on M.Tech Dissertation Preliminaries entitled \bfseries\rmfamily{"}\expandafter\uline\expandafter{\bfseries\rmfamily{\@title}}\bfseries\rmfamily{"}} \monocor {is prepared and presented by \expandafter\uline\expandafter{\bfseries\rmfamily{ \@atitle \@author }}} \monocor {bearing Roll No: \expandafter\uppercase\expandafter{\expandafter\uline\expandafter{\bfseries\rmfamily{\@regno}}}},\monocor{\ 2nd Year of M.Tech (Computer Engineering) and his work is satisfactory.}
		
		\vspace*{60pt} 		

		\normalsize		
		\hspace*{-15pt}\textbf{SUPERVISORS}
		\vspace*{55pt} 		

		\setstretch{1.5}		
		\begin{minipage}[l]{0.5\textwidth}		
			\centuryf{			
				\textbf{				
					\makebox[150pt]{\hrulefill} \\ \vspace*{-5pt}					
						\hspace*{10pt} \@stitleI \ \@supervisorI
				}				
			}				
		\end{minipage}				
		\begin{minipage}[r]{0.5\textwidth}		
			\centuryf{			
				\textbf{				
					\makebox[150pt]{\hrulefill} \\ \vspace*{-5pt}
						\hspace*{10pt} \@stitleII \ \@supervisorII
				}				
			}			
		\end{minipage}		

		\vspace*{70pt}

		\begin{minipage}[l]{0.5\textwidth}					
			\centuryf{			
				\textbf{		
					\makebox[150pt] \\ \vspace*{-5pt}					
						\begin{flushleft}
							\hspace*{50pt} JURY \\		
							\hspace*{50pt} \\
						\end{flushleft}		
				}				
		}				
		\end{minipage}%				
		\begin{minipage}[r]{0.5\textwidth}		
			\centuryf{			
				\textbf{				
					\makebox[150pt] \\ \vspace*{-5pt}
						\begin{flushleft}											
							\hspace*{25pt} HEAD OF DEPT.	\\
							\hspace*{25pt} \@hodtitle \ \@hodname
						\end{flushleft}
				}			
			}	
		\end{minipage}							
		\newpage		
}
\makeatother

%-----------------------------------
%		Acknowledgement Page
%-----------------------------------

\makeatletter
\newcommand{\putsvnitack}[1]{
	\hspace*{10pt}\parbox{0.90\textwidth}{
		\begin{center}
			\Large
				\timesnr{
					\textbf{
						Acknowledgements
					}
				}
			\normalsize				
		\end{center}

		\vspace*{20pt}

		\hspace*{10pt} At the outset, I thank the God Almighty for the grace, strength and hope to make my endeavor a success. I express my sincere gratitude to my guides \@stitleI \@supervisorI, Assistant Professor, Computer Engineering Department, SVNIT, Surat and \@stitleII \@supervisorII, Principal Technical Officer, Electronics and Information Technology Department, C-DAC, Mumbai for their exemplary guidance, monitoring and constant encouragement without which the successful completion of this report would not have been possible.
		\newline

 		\hspace*{10pt} I am also highly grateful to the staff of Computer Department for giving me a lot of their valuable time, as well as guidance and suggestions whenever I needed them.
		\newline

		\hspace*{10pt} I would like to thank to my friends, who stood by me, whenever I needed their assistance and also gave me the strengths to carry on.
		\newline
		
		\hspace*{10pt} I would like to express my gratitude towards my parents and family for their kind co-operation and encouragement which help me completion of my report.
			
		\begin{flushright}
			\vspace{60pt}  
				\textbf{
					\@author	\\
					\@regno
				}
		\end{flushright}
	}	
	\newpage
}
\makeatother

%-----------------------------------
%		Abstract Page
%-----------------------------------

\makeatletter
\newcommand{\putsvnitabstract}[1]{
			%\hspace*{10pt}\parbox{0.90\textwidth}{
				\begin{center}
					\Large
						\timesnr{
							\textbf{
								{
									Abstract
								}
							}
						}				
				\end{center}
				\vspace*{40pt}
				{#1}
		%	}	
			\newpage
		}
\makeatother

%-----------------------------------
%		Place bibliography in table of contents
%-----------------------------------
\def\thebibliography#1{\cleardoublepage\chapter*{\raggedleft ddBibliography}\addcontentsline{toc}{chapter}{Bibliography}\list
  {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax}
%