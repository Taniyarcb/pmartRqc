% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_MSomicsR.R
\name{plot-MSomicsR}
\alias{plot-MSomicsR}
\alias{plot.corRes}
\alias{plot.customFilt}
\alias{plot.cvFilt}
\alias{plot.dimRes}
\alias{plot.imdanovaFilt}
\alias{plot.lipidData}
\alias{plot.metabData}
\alias{plot.moleculeFilt}
\alias{plot.normRes}
\alias{plot.pepData}
\alias{plot.proData}
\alias{plot.proteomicsFilt}
\alias{plot.rmdFilt}
\title{Produce a plot of a MSomicsR S3 Object}
\usage{
\method{plot}{corRes}(corRes_object, ...)

\method{plot}{moleculeFilt}(filter_object, min_num = NULL, ...)

\method{plot}{proteomicsFilt}(filter_object, min_num_peps = NULL,
  degen_peps = FALSE, ...)

\method{plot}{imdanovaFilt}(filter_object, min_nonmiss_anova = NULL,
  min_nonmiss_gtest = NULL, ...)

\method{plot}{rmdFilt}(filter_object, pvalue_threshold = NULL,
  sampleID = NULL, ...)

\method{plot}{cvFilt}(filter_object, cv_threshold = NULL, ...)

\method{plot}{customFilt}(filter_object, ...)

\method{plot}{pepData}(omicsData, order_by = NULL, color_by = NULL,
  facet_by = NULL, facet_cols = NULL, ...)

\method{plot}{proData}(omicsData, order_by = NULL, color_by = NULL,
  facet_by = NULL, facet_cols = NULL, ...)

\method{plot}{lipidData}(omicsData, order_by = NULL, color_by = NULL,
  facet_by = NULL, facet_cols = NULL, ...)

\method{plot}{metabData}(omicsData, order_by = NULL, color_by = NULL,
  facet_by = NULL, facet_cols = NULL, ...)

\method{plot}{dimRes}(dimRes_object, ...)

\method{plot}{normRes}(normData, order_by = NULL, color_by = NULL, ...)
}
\arguments{
\item{corRes_object}{an object of class corRes. A correlation matrix of all samples.}

\item{...}{further arguments}

\item{filter_object}{a filter object for the respective \code{omicsData} class.}

\item{min_num}{an integer value specifying the minimum number of times each feature must be observed across all samples.}

\item{min_num_peps}{an optional integer value between 1 and the maximum number of peptides that map to a protein in the data. The value specifies the minimum number of peptides that must map to a protein. Any protein with less than \code{min_num_peps} mapping to it will be returned as a protein that should be filtered. Default value is NULL.}

\item{degen_peps}{logical indicator of whether to filter out degenerate peptides (TRUE) or not (FALSE). Default value is FALSE.}

\item{min_nonmiss_anova}{the minimum number of non-missing feature values allowed per group for \code{anova_filter}. Suggested value is 2.}

\item{min_nonmiss_gtest}{the minimum number of non-missing feature values allowed per group for \code{gtest_filter}. Suggested value is 3.}

\item{pvalue_threshold}{A threshold for the Robust Mahalanobis Distance (RMD) p-value. If \code{sampleID} is NULL (see \code{sampleID} below), a horizontal line is plotted at the RMD value that corresponds with the threshold, and all samples above the line have a p-value below the threshold. If \code{sampleID} is not NULL, \code{pvalue_threshold} will do nothing. Default value is NULL.}

\item{sampleID}{If specified, the plot produces a boxplot instead of a scatterplot. The \code{sampleID} input will place an "x" at the value for each of the metrics on the boxplots. Default value is NULL.}

\item{cv_threshold}{shades the area on the histogram below the given threshold. Default value is NULL.}

\item{omicsData}{an object of the class 'pepData', 'proData', 'lipidData', or 'metabData' usually created by \code{\link{as.pepData}}, \code{\link{as.proData}}, \code{\link{as.lipidData}}, or  \code{\link{as.metabData}}, respectively.}

\item{order_by}{a character string specifying a main effect by which to order the boxplots. This main effect must be found in the column names of f_data in the omicsData object. If \code{order_by} is "group_DF", the boxplots will be ordered by the group variable from the group_designation function. If NULL (default), the boxplots will be displayed in the order they appear in the data.}

\item{color_by}{a character string specifying a main effect by which to color the boxplots. This main effect must be found in the column names of f_data in the omicsData object. If \code{color_by} is "group_DF", the boxplots will be colored by the group variable from the group_designation function. If NULL (default), the boxplots will have one default color.}

\item{facet_by}{a character string specifying a main effect with which to create a facet plot. This main effect must be found in the column names of f_data in the omicsData object. Default value is NULL.}

\item{facet_cols}{an optional integer specifying the number of columns to show in the facet plot.}

\item{interactive}{default value is FALSE. If TRUE, an interactive d3heatmap will be rendered, allowing you to zoom in on sections of the heatmap.}

\item{x_lab}{logical indicator of whether to label the x-axis with the sample names. Defaults to TRUE. If FALSE, no x-axis labels are included in the plot.}

\item{y_lab}{logical indicator of whether to label the y-axis with the sample names. Defaults to TRUE. If FALSE, no y-axis labels are included in the plot.}

\item{colorbar_lim}{numeric pair of numeric values specifying the minimum and maximum values to use in the heatmap color bar. Defaults to 'c(NA, NA)', in which case ggplot2 automatically sets the minimum and maximum values based on the correlation values in the data.}

\item{x_lab}{character string to be used for x-axis label. Defaults to NULL, in which case "Samples" is used.}

\item{y_lab}{character string to be used for y-axis label. Defaults to NULL, in which case "log2(Robust Mahalanobis Distance)" is used.}

\item{legend_lab}{character string to be used for the legend title. Defaults to NULL, in which case "Group" is used.}

\item{title_plot}{character string to be used for the plot title. Defaults to NULL, in which case "Sample Outlier Results /n p-value threshold = 0.xyz" is used, where 'xyz' is the pvalue_threshold supplied to the function.}

\item{title_size}{integer value indicating the font size for the plot title. Defaults to 14.}

\item{x_lab_size}{integer value indicating the font size for the plot title. Defaults to 11.}

\item{y_lab_size}{integer value indicating the font size for the plot title. Defaults to 11.}

\item{bw_theme}{logical indicator of whether to use the "theme_bw". Defaults to FALSE, in which case the ggplot2 default theme is used.}

\item{legend_position}{character string specifying one of "right", "left", "top", or "bottom" for the location of the legend. Deafults to "right".}
}
\value{
a ggplot summarizing the MSomicsR object
}
\description{
This function will provide a plot for a \code{omicsData} object, any of the filter objects in MSomicsR, or a \code{corRes} object.
}
\details{
Various further arguments can be specified depending on the class of the object being plotted.

For plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData':
\tabular{ll}{
\code{order_by} \tab a character string specifying a main effect by which to order the boxplots. This main effect must be found in the column names of f_data in the omicsData object. If order_by is "group_DF", the boxplots will be ordered by the group variable from the group_designation function. If NULL (default), the boxplots will be displayed in the order they appear in the data. \cr
\code{color_by} \tab a character string specifying a main effect by which to color the boxplots. This main effect must be found in the column names of f_data in the omicsData object. If color_by is "group_DF", the boxplots will be colored by the group variable from the group_designation function. If NULL (default), the boxplots will have one default color. \cr
\code{facet_by} \tab a character string specifying a main effect with which to create a facet plot. This main effect must be found in the column names of f_data in the omicsData object. Default value is NULL. \cr
\code{facet_cols} \tab an optional integer specifying the number of columns to show in the facet plot. \cr
\code{x_lab} \tab character string to be used for x-axis label. Defaults to NULL, in which case "Samples" is used. \cr
\code{y_lab} \tab character string to be used for y-axis label. Defaults to NULL, in which case "log2(Robust Mahalanobis Distance)" is used. \cr
\code{title_plot} \tab character string to be used for the plot title. Defaults to NULL, in which case "Sample Outlier Results /n p-value threshold = 0.xyz" is used, where 'xyz' is the pvalue_threshold supplied to the function. \cr
\code{legend_lab} \tab character string specifying the title label to use for the legend \cr
\code{title_size} \tab integer value specifying the font size for the plot title. Default is 14. \cr
\code{x_lab_size} \tab integer value indicating the font size for the x-axis. Defaults to 11. \cr
\code{y_lab_size} \tab integer value indicating the font size for the y-axis. Defaults to 11. \cr
\code{bw_theme} \tab logical indicator of whether to use the "theme_bw". Defaults to FALSE, in which case the ggplot2 default theme is used. \cr
\code{legend_position} \tab character string specifying one of "right", "left", "top", or "bottom" for the location of the legend. Defaults to "right". \cr
}

For plotting an S3 object of type 'corRes':
\tabular{ll}{
\code{interactive} \tab default value is FALSE. If TRUE, an interactive d3heatmap will be rendered, allowing you to zoom in on sections of the heatmap. \cr
\code{title_plot} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData'  \cr
\code{x_lab} \tab logical indicator of whether to label the x-axis with the sample names. Defaults to TRUE. If FALSE, no x-axis labels are included in the plot. \cr
\code{y_lab} \tab logical indicator of whether to label the y-axis with the sample names. Defaults to TRUE. If FALSE, no y-axis labels are included in the plot. \cr
\code{colorbar_lim} \tab numeric pair of numeric values specifying the minimum and maximum values to use in the heatmap color bar. Defaults to 'c(NA, NA)', in which case ggplot2 automatically sets the minimum and maximum values based on the correlation values in the data. \cr
\code{title_size} See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \tab \cr
}

For plotting an S3 object of type 'dimRes':
\tabular{ll}{
\code{x_lab} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
\code{y_lab} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData'  \cr
\code{legend_lab} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
\code{title_plot} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData'  \cr
\code{title_size} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData'  \cr
\code{x_lab_size} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
\code{y_lab_size} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
\code{bw_theme} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
\code{legend_position} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
}

The following arguments are available for plotting the \code{filter_object}s of type 'moleculeFilt', 'cvFilt', 'rmdFilt', 'proteomicsFilt', and 'imdanovaFilt':
\tabular{ll}{
\code{x_lab} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
\code{y_lab} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData'  \cr
\code{legend_lab} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
\code{title_plot} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData'  \cr
\code{title_size} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData'  \cr
\code{x_lab_size} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
\code{y_lab_size} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
\code{bw_theme} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
\code{legend_position} \tab See specification of extra arguments for plotting an S3 object of type 'pepData', 'proData', 'metabData', or 'lipidData' \cr
}

The following give arguments specific to plotting individual \code{filter_objects}.

For plotting an S3 object of type 'moleculeFilt':
\tabular{ll}{
\code{min_num} \tab an integer value specifying the minimum number of times each biomolecule must be observed across all samples in order to retain the biomolecule. Default value is 2. \cr
}

For plotting an S3 object of type 'cvFilt':
\tabular{ll}{
\code{cv_threshold} \tab an integer value specifying the maximum coefficient of variation (CV) threshold for the biomolecules. Biomolecules with CV greater than this threshold will be filtered. Default is 150. \cr
}

For plotting an S3 object of type 'rmdFilt':
\tabular{ll}{
\code{pvalue_threshold} \tab numeric value between 0 and 1, specifying the p-value, below which samples will be removed from the dataset. Default is 0.001. \cr
}

For plotting an S3 object of type 'proteomicsFilt':
\tabular{ll}{
\code{min_num_peps} \tab an optional integer value between 1 and the maximum number of peptides that map to a protein in omicsData. The value specifies the minimum number of peptides that must map to a protein. Any protein with less than \code{min_num_peps} mapping to it will be returned as a protein that should be filtered. Default value is NULL. \cr
\code{degen_peps} \tab logical indicator of whether to filter out degenerate peptides (TRUE) or not (FALSE). Default value is FALSE.\cr
}

For plotting an S3 object of type 'imdanovaFilt':
\tabular{ll}{
\code{min_nonmiss_anova} \tab integer value specifying the minimum number of non-missing feature values allowed per group for \code{anova_filter}. Default value is 2. \cr
\code{min_nonmiss_gtest} \tab integer value specifying the minimum number of non-missing feature values allowed per group for \code{gtest_filter}. Default value is 3.\cr
}
}
\examples{
donrun{
library(pmartRdata)
data("pep_object")
cor_matrix <- cor_result(pep_object)
plot(cor_matrix)
plot(cor_matrix, interactive = TRUE)

to_filter <- molecule_filter(pep_object)
plot(to_filter, min_num = 4)

data("pro_object")
plot(pro_object)
plot(pro_object, order_by = "Condition")
plot(pro_object, color_by = "Condition")
plot(pro_object, facet_by = "Condition")
plot(pro_object, facet_by = "Condition", facet_cols = 1)

pep_object2 <- group_designation(pep_object, main_effects = "Condition")
pca_res <- dim_reduction(pep_object2, k = 2)
plot(pca_res)
}
}

