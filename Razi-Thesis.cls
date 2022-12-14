
%%
%%  This is file `Razi-Thesis.cls',
%%  It is a modification  of Tabriz_thesis of Vahid Damanafshan,
%%	by: Amin Roshani, roshani.amin@gmail.com
%%	Ver 0.1, Feb 2022

%% Original Copyright

%%  The original file was xepersian-thesis.cls by Vafa Khalighi
%%   __________________________________
%%   Copyright © 2011-2012 Vahid Damanafshan
%%  
%%   http://damanafshan.tk      
%%   http://forum.parsilatex.com
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Razi-Thesis}
              [02/05/2022 v0.1
 Persian thesis document class in XeLaTeX for University of Razi projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[openany,a4paper,12pt,twoside]{book}
\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\preface#1{\gdef\@preface{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
%\def\department#1{\gdef\@department{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\newif\if@phdthesis
\@phdthesisfalse
\DeclareOption{phd}{\@phdthesistrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
{
\if@mscthesis
{\projectLabel{پایان‌نامه}}
\else
 \if@bscthesis
 {\projectLabel{پروژه }}
 \else
{\projectLabel{رساله}}
\fi\fi
}\fi

\ifx\@degree\undefined%
{
\if@mscthesis
\degree{کارشناسی ارشد}
\else
\if@bscthesis
\degree{کارشناسی}
\else
\degree{دکتری}
\fi\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\firstPage}{\begin{titlepage}
%\topmargin=-30pt
\vspace{-1cm}
\centerline{{\includegraphics[width=2cm]{images/logoFA}}}
\par
\vspace{-1cm}
%{\large\bfseries\@university}\\[0.3cm]
{\small \bfseries \@faculty}\\
\vspace{0.8cm}
\if@bscthesis 
{\large\bfseries \@projectLabel \space \@degree\\[0.3cm]
%	\ifx\@field\undefined%
%	\relax
%	\else
\reshte	\space\@subject\space
%	\gerayesh \space \@field
%	\fi
}
\else
{\large\bfseries \@projectLabel \space \@degree \\[0.3cm]
%{\large\bfseries{رشته \@subject}}
%\vskip .2cm
 \if@mscthesis
 {\reshte \space\@subject \space \gerayesh \space\@field}
 \else
 {\reshte \space\@subject}
 \fi
}
\fi	

\vskip 5mm

{\huge \bfseries \@title}
\vskip 1cm
{\bfseries{نگارش}}
\vskip -0.9cm
{\bfseries \@name \space \@surname}
\vskip 1cm
\large
{
\ifx\@firstsupervisor\undefined%
	\ifx\@secondsupervisor\undefined%
	\else
	\fi
\else
\ifx\@secondsupervisor\undefined%
{\bfseries
استاد راهنما
}
\vskip -0.9cm
{\bfseries\par
\@firstsupervisor}
\else
{\bfseries
استادان راهنما
}
\vskip -0.9cm
{\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\vskip 1cm
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
{\bfseries
استادان مشاور
}
\vskip -0.9cm
{\bfseries\par
\@firstadvisor}
\else
{\bfseries
استادان مشاور
}
\vskip -0.9cm
{\bfseries\@firstadvisor{} و \@secondadvisor}
\fi\fi}

\par
\vskip 6mm
%\vfill
{\bfseries \@thesisdate}
%\vfill
\end{titlepage}%
} % end of firstPage

\newcommand{\besmPage}{
\thispagestyle{empty}
%\hfill
\begin{center}
\includegraphics[width=10cm]{images/besm}
\end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% اصالت
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\Esalat}{
\newpage
\vspace*{1.5cm}
\thispagestyle{empty}
\begin{center}
{\bfseries
	اصالت و مالکیّت
\@projectLabel}
\end{center}
این‌جانب 
{\@name \space \@surname}\space
 دانش‌آموختۀ 
{\@degree {}}\space
\if@mscthesis
{\reshte \space{\@subject \space \gerayesh \space\@field \space \@faculty \space \@university}\space}
\else
{\reshte {\space\@subject \space \@faculty \space \@university}\space}
\fi
%{\@faculty \space \@university \space}
پدیدآور 
{\@projectLabel} \space
با عنوان 
{\@title}\space
با راهنمایی
{
\ifx\@secondsupervisor\undefined
{\@firstsupervisor{}}
\else
{\@firstsupervisor{} و \@secondsupervisor}
\fi
}
گواهی و تعهّد می‌كنم كه بر پایۀ قوانين و 
مقرّرات، از جمله «دستورالعمل نحوۀ بررسـی تخلّفات پژوهشـی» و همچنين مصادیق تخلّفات پژوهشی «مصوّب وزارت علوم، تحقيقات و 
فناوری (شمارۀ $ /245602 $و؛ $ 25 $ اسفند $ 1393 $):

\noindent
{این 
\@projectLabel}\space
دستاورد پژوهش این‌جانب و محتوای آن از درستی و اصالت برخوردار است؛ 

\noindent
حقوق معنوی همۀ كسانی را كه در به دست آمدن نتایج اصلی 
\@projectLabel \space
 تأثيرگذار بوده‌اند، رعایـت كرده‌ام و هنگام كاربرد دستاورد پژوهش‌های دیگران در آن، با دقّت و به‌درستی به آن‌ها استناد كرده‌ام؛
 
\noindent
این 
\@projectLabel \space
و محتوای آن را تاكنون این‌جانب یا كس دیگری برای دریافت هيچ‌گونه مدرك یا امتيازی در هيچ جا ارائه نكردهایم؛ 

\noindent
همۀ حقوق مادّی این 
{\@projectLabel}\space
 از آن 
{\@university}\space
 اسـت و آثـار برگرفتـه از آن بـا وابسـتگی سازمانی 
{\@university}\space 
 منتشر خواهد شد؛ 

\noindent
در همۀ آثار برگرفته از این 
{\@projectLabel}، نام استاد(ان) راهنما و اگر استاد راهنمای نخست تشخيص دهد، نام استاد(ان) مشاور و نشانی رایانامۀ سازمانی آنان را می‌آورم؛ 

\noindent
در همۀ گام‌های انجام این 
{\@projectLabel}، هرگاه به اطّلاعات شخصی افراد یـا اطلاعات سازمان‌ها دسترسـی داشته یا آن‌ها را به‌كاربرده‌ام، رازداری و اخلاق پژوهش را رعایت كرده‌ام.
\vspace*{1.5cm}
\begin{flushleft}
	تاریخ 
\hspace*{3cm}
	امضا  
\end{flushleft}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% حقوق
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\Rights}{
	\newpage
	\vspace*{1.5cm}
	\thispagestyle{empty}
	\begin{center}
		{\bfseries
حقوق:
			\@university, 1397}
	\end{center}
این گزارش و همۀ حقوق مادّی و محصولات آن (مقاله‌ها، كتاب‌ها، پروانه‌های اختراع، برنامه‌های رایانه‌ای، نرم‌افزارها، تجهيزات ساخته شده 
و مانند آن‌ها) بر پایۀ «قانون حمایت حقوق مؤلّفان و مصـنّفان و هنرمندان» مصوّب سال 1348 و اصلاحيه‌های بعدی آن و همچنين آیين‌نامه‌های اجرایی این قانون «از آنِ
{\@university}\space
 است و هرگونه استفاده از همه یـا پاره‌ای از آن شامل نقل قول، تكثير، انتشار، كاربرد 
نتایج، تكميل و مانند آن‌ها به‌صورت چاپی، الكترونيكـی یا وسایل دیگر، تنها با اجازۀ نوشتاری 
{\@university}\space
 شدنی است. نقل قول محـدود در انتشارات علمـی ماننـد کتاب و مقالـه یـا پایان‌نامه‌ها و رساله‌های دیگر با نوشتن اطّلاعات كامل كتاب‌شناختی، نيازی به مجوّز 
{\@university}\space
  ندارد.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% داوران فارسی
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\davaranPage}{
\if@bscthesis
\relax
\else	
\newpage
\thispagestyle{empty}
\begin{center}
{\includegraphics[scale = 0.95]{images/davaran}}
\end{center}
\fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% داوران انگلیسی
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\davaranPageEN}{
	\if@bscthesis
	\relax
	\else
	\newpage
	\thispagestyle{empty}
	\begin{center}
		{\includegraphics[scale = 0.95]{images/davaranEN}}
	\end{center}
\fi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%.
% سوگند نامه
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\SogandName}{
\if@phdthesis
\newpage
\vspace*{1cm}
\thispagestyle{empty}
\centerline{{\includegraphics[width=2cm]{images/logoFA}}}
\begin{center}
{\textbf{سوگندنامۀ دانش‌آموختگان دکتری دانشگاه رازی}}\\
	بسم الله الرّحمن الرّحیم\\
	ن وَ القَلَمِ وَ مَا یَسطُرُونَ
\end{center}
سـپاس خدای را عزّوجل كه از دریای بیكرانِ دانش و بخشـش خویش مرا بهره‌مند كرد تا در سایهٔ داناییِ اسـتادانِ فرهيخته و مجاهدۀ علمی خود، دورۀ دكتری را به پایان برسانم. اینک كه به دریافت درجۀ دكتری مفتخر می‌شوم، در برابر قرآن مجيد سوگند یاد می‌كنم كه همواره خداوندِ بصير را آگاه بر پندار، كردار و گفتار خویش بدانم و با پایبندی به همۀ چارچوب‌های اخلاق علمی و حرفه‌ای و مقدّم‌داشـتن منافع ملّی بر خواسـته‌های شـخصـی، با تمام توان خویش در راه تحقّق آرمان‌های اسـلام و انقلاب، سربلندی ایران و تعالی جامعۀ بشری بكوشم و در این راه از هيچ كوششی فروگذار نكنم. از خداوند بزرگ می‌خواهم همواره مرا در این راه و در مسير دانش‌اندوزی پيروز دارد؛ خداوندا:
\begin{center}
	قطرۀ دانش که بخشیدی ز پیش 
	\quad
	متّصل گردان به دریاهای خویش
\end{center}
\hspace*{2cm}
\begin{flushleft}
\@name \space \@surname \\
امضاء
\end{flushleft}
\else
\relax
\fi
}

\newcommand\abstractPage{\newpage
\thispagestyle{empty}%plain
\vskip 15mm
{\noindent\Large\bfseries چکیده}
\vspace{10mm}
\par
\noindent
\@fa-abstract
\vspace{8mm}
\par
\noindent
\textbf{کلیدواژه‌ها:} 
\@keywords
\newpage
}

\newcommand\prefacePage{\newpage
	\thispagestyle{plain}
	\vskip 15mm
	{\noindent\Large\bfseries پیش‌گفتار}
	\vspace{10mm}
	\par
	\noindent
	\@preface
\newpage
}

% \def\latinabstract{\newpage
% \thispagestyle{empty}
% \vskip 15mm
% \begin{center}%{\Large\bfseries \@latintitle \\[5mm]}
% {\bfseries Abstract}
% \end{center}
% \vspace{5mm}}

% \def\endlatinabstract{\newpage}

\def\taghdim{\newpage
	\thispagestyle{empty}
	\noindent
	{\Large \bfseries تقدیم به:}
	\vspace{1cm}
	\par\noindent}
\def\endtaghdim{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}
\noindent
{\Large \bfseries سپاسگزاری}
\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{%\nastaliq \scriptsize 
\@name\ \@surname \\
\@thesisdate}
\end{flushleft}}

% \def\abstract{
% \newpage
% \subsection*{چکیده}\small
% \@normalsize
% \@fa-abstract
% }
% \def\endabstract{\par}

%\pagenumbering{harfi}
%\let\ol@chapter\@chapter
%\def\@chapter{%
%  \ifnum\c@chapter=0 \pagenumbering{arabic}\setcounter{page}{1}\fi
%  \ol@chapter}

%\font\latintitlefont=cmssbx10 scaled 2300 %cmssbx10 scaled 2300

\font\supervisorfont=cmbxti10

\newcommand{\latinfirstPage}{%
\newpage\clearpage
\thispagestyle{empty}
\vskip 15mm
{\noindent\bfseries Abstract:}
\vspace{5mm}
\par
\noindent
\@en-abstract
\vspace{8mm}
\par
\noindent
\textbf{Keywords:} 
\@latinkeywords

\begin{titlepage}
\vspace{-1.5cm}
{\includegraphics[width=2cm]{images/logoEN}}
\par
\vspace{-0.1cm}
{\bfseries \@latinfaculty}\\
\vspace{3cm}
{\bfseries
\large
\if@bscthesis 
	A Thesis in Partial Fulfillment for the Degree of B.Sc
	in  \@latinsubject 
\else 
	 \if@mscthesis
	 A Thesis in Partial Fulfillment for the Degree of M.Sc
	\else
	A Thesis in Partial Fulfillment for the Degree of
	Ph.D
	\fi
	in  \@latinsubject 
	%\baselineskip=.750cm
	%\addtolength{\baselineskip}{-5mm}
\fi
}
\vskip 20mm
{%\latintitlefont 
	\bfseries\LARGE
	\@latintitle}
%\baselineskip=.750cm \par
\vskip 20mm
{\bfseries\latinby}\par
{\bfseries %\supervisorfont
\large\@latinname \; \@latinsurname}\par

\vskip 20mm

{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
{\bfseries Supervisor:}
{\bfseries\par
\@firstlatinsupervisor}
\else
\large
{\bfseries Supervisors:}
\par
{\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}

\vskip 20mm

{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
{\bfseries Advisor:}
{\bfseries\par
\@firstlatinadvisor}
\else

\large
{\bfseries Advisors:}
\par
{\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}
\vskip 5mm

\par
\vskip 2cm

{\bfseries \@latinthesisdate}
\end{titlepage}
\fi}

\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجه }
\def\by{پژوهشگر}
\def\latinby{By:}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\def\publicationspage{
	\newpage
	\thispagestyle{empty}
	\noindent
	{\Large \bfseries فهرست مقاله‌های برگرفته از پارسا}
	\vspace{1cm}
	\par\noindent
}
\def\endpublicationspage{\newpage}


%% 
%% Copyright © 2021-2022      by Amin Roshani
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by Amin Roshani
%% 
%%  It is a based on Tabriz_thesis of Vahid Damanafshan,
%%    which was based on xepersian-thesis.cls by Vafa Khalighi
%%   ____________________________________________________________________
%% Special thanks to Vafa Khalighi for the XePersian Package.
%% 
%% End of file `Razi-Thesis.cls'.	
