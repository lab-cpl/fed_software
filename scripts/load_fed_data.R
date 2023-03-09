# libs
# remember to install pacman
pacman::p_load(
    tidyverse,
    ggplot2,
    rstudioapi
)

# Relevant filters

fed_n_cols = 7 # expected number of columns

# set folder path containing all fed files

file_path <- rstudioapi::selectDirectory(
    caption = "Select Directory",
    label = "Select",
    path = getActiveProject()
)

file_names <- list.files(path = file_path,
                         full.names = TRUE,
                         recursive = TRUE,
                         pattern = "*.CSV") 

# fed files are expected to be [0-9].CSV
# all other extension are ignored
# make sure to only select relevant files

read_files <- file_names %>% 
    map(., function(data){
        raw <- read_csv(data)
        dim <- dim(raw)
        if (dim[2] == fed_n_cols){
            return(raw)
        }
        else{
            return(
                tibble(
                    file = .,
                    error = "Not enough number of columns"
                )
            )
        }
    })


#
# raw_read
# 


#
# file_n_check
#

#
# file_rows_check
#

#
# file_identity_check
#

#
# col_number_check
#

#
# file_na_check
#

#
# col_type_check
#

#
# out_first_last
#

#
# out_number_pellets
#

#
# out_number_periods
#