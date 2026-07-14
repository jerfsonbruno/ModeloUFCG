\name{modeloUFCG}
\alias{modeloUFCG}
\title{Modelo de Relatório para a Uaest-UFCG}
\usage{
modeloUFCG(..., keep_tex = TRUE, latex_engine = "xelatex",
  pandoc_args = NULL, includes = NULL, fig_crop = TRUE)
}
\arguments{
\item{...}{Argumentos adicionais para \code{rmarkdown::pdf_document}}

\item{keep_tex}{Argument boleano para selecionar se os arquivos \code{.tex} intermediários devem ficar armazenados no disco. O padrão é \code{TRUE}}

\item{latex_engine}{Motor LaTeX utilizado na geração do PDF. O padrão é \code{"xelatex"}.}

\item{pandoc_args}{Argumentos adicionais repassados ao Pandoc.}

\item{includes}{Arquivos adicionais (preambulo, before/after body) a serem incluídos, conforme \code{rmarkdown::includes}.}

\item{fig_crop}{Argumento booleano para habilitar o corte automático de figuras via \code{pdfcrop}, quando disponível. O padrão é \code{TRUE}.}
}
\value{
Output de R Markdown output para ser passado para
\code{\link[rmarkdown:render]{render}}
}
\description{
Modelo de documento para geração de relatórios da UAest-UFCG.
}
\section{Document options}{

Existem diversas opções a serem utilizadas no preâmbulo do documento, a fim de personalizá-lo. Estas opções estão descritas abaixo:

\describe{
  \item{\code{author}}{Lista de consultor(es), consulente(s) e orientador(a) do trabalho.}
  \item{\code{address}}{Descrição do local onde consulente e consultores trabalham ou estão vinculados.}
  \item{\code{corresp_author_name}}{Nome do consultor principal do trabalho.}
  \item{\code{corresp_author_email}}{Email do consultor principal do trabalho.}
  \item{\code{subject}}{Área(s) do conhecimento do trabalho realizado.}
  \item{\code{keywords}}{Palavras-chave referentes ao trabalho realizado.}
  \item{\code{abstract}}{Resumo do relatório.}
  \item{\code{bibliography}}{Nome do arquivo \code{.bib} no qual as referências estão colocadas.}
}
O arquivo de exemplo do pacote possui um relatório fictício com estas opções já todas preenchidas.
}
\examples{
\dontrun{
rmarkdown::draft("MyArticle.Rmd", template = "pdf", package = "modeloUFCG")
rmarkdown::render("MyArticle.Rmd")
}
}
\references{
JJ Allaire, Yihui Xie, R Foundation, Hadley Wickham, Journal of
  Statistical Software, Ramnath Vaidyanathan, Association for Computing
  Machinery, Carl Boettiger, Elsevier, Karl Broman, Kirill Mueller,
  Bastiaan Quast, Randall Pruim, Ben Marwick, Charlotte Wickham, Oliver
  Keyes, Miao Yu, Daniel Emaasit, Thierry Onkelinx, Alessandro
  Gasparini, Marc-Andre Desautels, Dominik Leutnant, MDPI, Taylor and
  Francis, Oğuzhan Öğreden, Dalton Hance, Daniel Nüst, Petter Uvesten,
  Elio Campitelli, John Muschelli and Zhian N. Kamvar (2019). rticles:
  Article Formats for R Markdown. R package version 0.10.
  https://CRAN.R-project.org/package=rticles
JJ Allaire, Joe Cheng, Yihui Xie, Jonathan McPherson, Winston Chang, Jeff Allen, Hadley
Wickham, Aron Atkins, Rob Hyndman and Ruben Arslan (2017). rmarkdown: Dynamic Documents for R.
R package version 1.6. \url{https://CRAN.R-project.org/package=rmarkdown}
Yihui Xie (2017). knitr: A General-Purpose Package for Dynamic Report Generation in R. R
package version 1.17.
}
\seealso{
\code{\link[rticles]{pnas_article}}
\code{\link[pinp]{pinp}}
}


