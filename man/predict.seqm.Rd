% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sequence_model.R
\name{predict.seqm}
\alias{predict.seqm}
\title{Predict method for sequence models}
\usage{
\method{predict}{seqm}(object, new_seqs, new_covariates = NULL,
  type = "response", ...)
}
\arguments{
\item{object}{a fitted object of class \code{"seqm"} from \code{seqm}.}

\item{new_seqs}{an object of class \code{"\link{proc}"} with which to predict.}

\item{new_covariates}{a new covariate matrix with which to predict.}

\item{type}{a string specifying whether to predict responses (\code{"response"}) 
or features (\code{"feature"}) or both (\code{"both"}).}

\item{...}{further arguments to be passed to \code{predict.keras.engine.training.Model}.}
}
\value{
If \code{type="response"}, a vector of predictions. The vector gives the 
  probabilities of the response variable being one if \code{response_type="binary"}.
  If \code{type="feature"}, a matrix of rnn outputs. If \code{type="both"}, a list 
  containing both the vector of response variable prediction and the rnn output matrix.
}
\description{
Obtains predictions from a fitted sequence model object.
}
\details{
It unserialize \code{object$model_fit} to obtain a keras model of class 
\code{"keras.engin.training.Model"} and then calls \code{predict}
to obtain predictions.
}
\seealso{
\code{\link{seqm}} for fitting sequence models.
}
