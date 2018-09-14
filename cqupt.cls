%
%	本文是重庆邮电大学本科生毕业论文模板
%	@author FYQ
%	@date 2018/04/19
%	@version 1.0
%

%	---	定义的新的类
\ProvidesClass{cqupt}[2018/04/19 ArwenFeng LaTeX package for CQUPT]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[zihao=-4,a4paper,twoside,openany,fancyhdr,fntef]{ctexbook}


%
%	---	定义页边距
%
\usepackage[%
paper=a4paper,%
top=3cm,% 上 %
bottom=2.5cm,% 下%
left=3.5cm,% 左%
right=2.5cm,% 右 %
headheight=1.6cm,% 页眉%
footskip=1.5cm% 页脚  %
]{geometry} % 页面设置 %
%
%	---	定义字体
%
%设置字体需要的宏包
\RequirePackage{fontspec}
%设置西文字体为Times New Roman		
\setmainfont{Times New Roman}
%设置中文字体为宋体
%\setCJKmainfont{SimSun}
\setCJKmainfont[BoldFont = STZhongsong,ItalicFont = STKaiti]{SimSun}
%设置正文字号为小四
\renewcommand{\normalsize}{\zihao{-4}}  

%
%	---	定义页眉页脚
%
%使用fancyhdr库
\RequirePackage{fancyhdr}
%设置页眉样式
\newcommand{\headstyle}{
	\fancyhead[CO]{\zihao{5} 重庆邮电大学本科毕业设计（论文）}
	\fancyhead[CE]{\zihao{5} \leftmark}
}
%设置页脚样式
\newcommand{\footstyle}{\fancyfoot[C]{\zihao{5} \thepage}}


%定义一种新的格式叫做main
\fancypagestyle{main}{%
	\fancyhf{} %清空原有样式
	\fancyhead{} 
	\headstyle
	\footstyle
}
%=======================修改mainmatter 的页码为阿拉伯格式，并调整页面风格========================
\renewcommand{\mainmatter}{
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{main}
}



%
%	---	定义标题和段落样式
%
%定义段落标题格式
\ctexset{chapter={
      name = {第,章},
      number = {\arabic{chapter}},
      format = {\centering \heiti \zihao{3}},
      pagestyle = {main},
      beforeskip = 28bp,
      afterskip = 32bp,
      fixskip = true,
  }
}
\ctexset{section={
	format={\raggedright \heiti \zihao{-3}},
	beforeskip = 28bp plus 1ex minus .2ex,
	afterskip = 24bp plus .2ex,
  	fixskip = true,
	}
}
\ctexset{subsection={
   format = {\raggedright\heiti \zihao{4}},
   beforeskip =28bp,
   afterskip = 24bp,
   fixskip = true,
	}
} 


%定义1.5倍行距
\RequirePackage{setspace}
\renewcommand{\baselinestretch}{1.62}

%设置各个标题样式
\newcommand{\sectionbreak}{\clearpage} %小节从新的一页开始

%设置附录
\RequirePackage[title,titletoc]{appendix}


%
%	---	设置脚注格式
%
%脚注每页重新计数
\@addtoreset{footnote}{page}


\RequirePackage{array}
\RequirePackage{booktabs}
%
%	---	定义新的标题页面
%
%添加几个新的文档属性
\def \@school {}
\def \@etitle {}
\def \@major{}
\def \@classnum {}
\def \@stunum {}
\def \@instructor {}
\def \@supervisor{}
\newcommand{\etitle}[1]{\def \@etitle {#1}}
\newcommand{\school}[1]{\def \@school {#1}}
\newcommand{\major}[1]{\def \@major{#1}}
\newcommand{\classnum}[1]{\def \@classnum {#1}}
\newcommand{\stunum}[1]{\def \@stunum {#1}}
\newcommand{\instructor}[1]{\def \@instructor {#1}}
\newcommand{\supervisor}[1]{\def \@supervisor {#1}}

%重新定义\maketitle命令
\renewcommand{\maketitle}{
	\def\@titlelength{20em}
	\def\@btitlelength{4em}
	\begin{titlepage}
			\hfill \zihao{-4} \bfseries
			\renewcommand\arraystretch{0.6}
			\begin{tabular}{l} 
			 	\makebox[5em][s]{编号：} \underline{\makebox[5em]{}}\\
			 	\makebox[5em][s]{审定成绩：} \underline{\makebox[5em]{}}\\
			\end{tabular}
			\vspace{4em}
			\begin{center}
			{\zihao{-1} \bfseries 重庆邮电大学}\\
			\vspace{0.5em}
			{\zihao{-1} \bfseries 毕业设计(论文)}\\
			\vspace{6em}
			{\zihao{4} \bfseries
				\renewcommand\arraystretch{1.2}
				\begin{tabular}{lc}
					\makebox[\@btitlelength][s]{中文题目}&
					\underline{\makebox[\@titlelength]{\@title}} \\
					\makebox[\@btitlelength][s]{英文题目} &
					\underline{\makebox[\@titlelength]{\@etitle}} \\
					\makebox[\@btitlelength][s]{学院名称} &
					\underline{\makebox[\@titlelength]{\@school 学院}} \\
					\makebox[\@btitlelength][s]{学生姓名} &
					\underline{\makebox[\@titlelength]{\@author}} \\
					\makebox[\@btitlelength][s]{专业} &
					\underline{\makebox[\@titlelength]{\@major}} \\
					\makebox[\@btitlelength][s]{班级} &
					\underline{\makebox[\@titlelength]{\@classnum}} \\
					\makebox[\@btitlelength][s]{学号} &
					\underline{\makebox[\@titlelength]{\@stunum}} \\
					\makebox[\@btitlelength][s]{指导教师} &
					\underline{\makebox[\@titlelength]{\@instructor}} \\
					\makebox[\@btitlelength][s]{答辩组} & \\ 
					\specialrule{0em}{-2pt}{-8pt}%缩小行距的特殊透明线条
					\makebox[\@btitlelength][s]{负责人} &
					\underline{\makebox[\@titlelength]{\@supervisor}} \\
			\end{tabular}}\\
			\vspace{5em}
			{\zihao{4} 填表时间：\@date}\\
			\vspace{0.5em}
			{\zihao{4} 重庆邮电大学教务处制}\\
		\end{center}
	\end{titlepage}
}

%
%	---	定义新的中英文摘要环境
%
%中文摘要环境
\newenvironment{cnabstract}[1]{
	\def \cnkeyword {#1}
	%另起一页
	\clearpage 
	\pagestyle{plain}
	%非章节内容加入目录
	%\phantomsection
	%\addcontentsline{toc}{section}{摘要}
	\begin{center}
	\vspace*{0pt}
	{ \heiti \zihao{3} 摘要} 
	\vspace{0.5em}
	\end{center}	
}{
	\vspace{1em}
	\par{\heiti\zihao{-4} 关键词:} \cnkeyword
	\clearpage
}

%英文摘要环境
\newenvironment{enabstract}[1]{
	\def \enkeyword {#1}
	\clearpage 
	\pagestyle{plain}
	%非章节内容加入目录
	%\phantomsection
	%\addcontentsline{toc}{section}{Abstract}
	\begin{center}
	\vspace*{0pt}
	{\bfseries \zihao{3} Abstract} 
	\vspace{0.5em}
	\end{center}	}
	{
	\vspace{1em}
	\par{\zihao{-4}\bfseries Keywords:} \enkeyword
	\clearpage
}

%
%	---	定义新的目录页面
%
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\hypersetup{
	pdfborder = 000,%去掉链接红框
	pdfstartview=FitH%打开页面以窗口宽度显示
} 

\renewcommand{\cfttoctitlefont}{\hfill \heiti \zihao{3}}
\renewcommand{\contentsname}{目录}
\renewcommand{\cftaftertoctitle}{\hfill}
%\renewcommand{\cftbeforeloftitleskip}{100em}
%\renewcommand{\cftafterloftitleskip}{-100em}
\renewcommand{\cftdot}{.}
%\renewcommand{\cftdot}{…}%这种点也可以，就是比较粗
\renewcommand{\cftdotsep}{0}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}}
\renewcommand\cftsecleader{\cftdotfill{\cftdotsep}}%设置Section引导点
\renewcommand\cftsubsubsecnumwidth{2em}%设置三级标题宽度为2字节
\renewcommand{\cftbeforesecskip}{0em} %设置段间距
\renewcommand{\cftchapfont}{\songti \zihao{-4}} %设置chap字体
\renewcommand{\cftchappagefont}{\zihao{-4}}%设置Section页码字体——只是取消默认的加粗
\renewcommand{\cftsecfont}{\songti \zihao{-4}} %设置Section字体
\renewcommand{\cftsecpagefont}{\zihao{-4}}%设置Section页码字体——只是取消默认的加粗
\renewcommand\appendix{\setcounter{secnumdepth}{-2}}
\AtBeginDocument{
	%设置新的生成目录命令
	\let \oldtableofcontents \tableofcontents
	\renewcommand{\tableofcontents}{
	\fancypagestyle{plain}{
			\fancyhf{} %清空原有样式
			\fancyhead{}
			\fancyhead[CO]{\zihao{5} 重庆邮电大学本科毕业设计（论文）}
			\fancyhead[CE]{\zihao{5} \leftmark}
			\footstyle
	}
	\clearpage
	\pagestyle{plain}
	\vspace*{-50pt}
	\oldtableofcontents
	\clearpage
	\pagestyle{main}
	}
}

%===================================学位论文独创性声明================================
\newcommand{\declaretext}{
  我向学院呈交的论文《\@title》，是本人在指导教师的指导下，独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明并致谢。本人完全意识到本声明的法律结果由本人承担。
}
\newcommand{\warrantytext}{
  本人完全了解\underline{重庆邮电大学}有权保留、使用学位论文纸质版和电子版的规定，即学校有权向国家有关部门或机构送交论文，允许论文被查阅和借阅等。本人授权\underline{重庆邮电大学}可以公布本学位论文的全部或部分内容，可编入有关数据库或信息系统进行检索、分析或评价，可以采用影印、缩印、扫描或拷贝等复制手段保存、汇编本学位论文。
}
%===================原创性声明页面布局=========================
\newcommand{\makestatement}{
\thispagestyle{empty}
%\begin{titlepage}%如果需要分页打印，此页如此调整
  \begin{center}
    \heiti\zihao{-2}\underline{\@school}学院本科毕业设计(论文)诚信\mbox{承诺书}%防止单字单行的情况
  \end{center}
  \vskip .1cm
  \par \zihao{-4}本人郑重承诺：
  \par \declaretext
  \vskip 1cm \hspace{8cm}
  \renewcommand\arraystretch{1.1}
  \begin{tabular}{rl}
  	年级&\\
	专业&\\
	班级&\\
	承诺人签名&\\
	\multicolumn{2}{c}{\hspace{1.3cm}年\hspace{1.3cm}月\hspace{1.3cm}日}
  \end{tabular}
  \vskip 1cm
  \begin{center}
    \heiti\zihao{-2}学位论文版权使用授权书
  \end{center}
  \vskip .5cm
  \par\zihao{-4}\warrantytext
  \par （注：保密的学位论文在解密后适用本授权书。）
  \vskip .8cm
  \par 学生签名：\hspace{5.3cm} 指导老师签名：
  \par 日期：\hspace{1.3cm}年\hspace{1.3cm}月\hspace{1.3cm}日 \hspace{1cm}日期：\hspace{1.3cm}年\hspace{1.3cm}月\hspace{1.3cm}日
%\end{titlepage}
}

%设置图片caption格式
\RequirePackage{caption}
\captionsetup{labelsep=space,font={small}}%设置编号后为1个空格
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}} % 将图片编号与章节关联起来： 1.1
%设置表格caption格式
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}  
%设置表格行距
\renewcommand\arraystretch{1.2}
%设置多行表格行距
\RequirePackage{makecell}
\renewcommand\cellgape{\Gape[3pt]}