library(dplyr)

map_category <- function(org) {
  if (is.na(org) | org == "" | org == " ") {
    return("nothing19")
  }
  
  # Check for Acinetobacter first (assign to cineto1)
  if (grepl("Acinetobacter", org, ignore.case = TRUE)) {
    return("cineto1")
  }
  
  # Special case: Enterobacter aerogenes is now considered Klebsiella aerogenes
  if (grepl("Enterobacter aerogenes", org, ignore.case = TRUE)) {
    return("klebs10")
  }
  
  # Then check for Klebsiella (which will catch Klebsiella aerogenes, pneumoniae, oxytoca, etc.)
  if (grepl("Klebsiella", org, ignore.case = TRUE)) {
    return("klebs10")
  }
  
  # If "Escherichia coli" is present
  if (grepl("Escherichia coli", org, ignore.case = TRUE)) {
    return("ecoli8")
  }
  
  # Now check for Enterobacter (but not the specific aerogenes already caught)
  if (grepl("Enterobacter", org, ignore.case = TRUE)) {
    return("enterbacter7")
  }
  
  # Staphylococcus (covers both coagulase-positive and -negative)
  if (grepl("Staphylococcus", org, ignore.case = TRUE)) {
    return("staph14")
  }
  
  # Streptococcus pneumoniae (pneumococcus)
  if (grepl("Streptococcus pneumoniae", org, ignore.case = TRUE)) {
    return("spneumo15")
  }
  
  # Alpha hemolytic streptococci, viridans, or Streptococcus milleri group often represent oral flora
  if (grepl("Alpha hemolytic streptococci", org, ignore.case = TRUE) ||
      grepl("Viridans streptococci", org, ignore.case = TRUE) ||
      grepl("Streptococcus milleri", org, ignore.case = TRUE) ||
      grepl("Contaminating oropharyngeal flora", org, ignore.case = TRUE) ||
      grepl("Aggregatibacter", org, ignore.case = TRUE) ||
      grepl("Rothia", org, ignore.case = TRUE)) {
    return("oralflora5")
  }
  
  # Beta hemolytic Streptococcus groups B, C, or G → bahstrep2
  if (grepl("Beta hemolytic Streptococcus", org, ignore.case = TRUE)) {
    if (grepl("Group C", org, ignore.case = TRUE) ||
        grepl("Group B", org, ignore.case = TRUE) ||
        grepl("Group G", org, ignore.case = TRUE)) {
      return("bahstrep2")
    } else {
      return("other18")
    }
  }
  
  # Haemophilus influenzae
  if (grepl("Haemophilus influenzae", org, ignore.case = TRUE)) {
    return("hinflu9")
  }
  
  # Neisseria (this also covers Neisseria sicca, Neisseria flavescens, etc.)
  if (grepl("Neisseria", org, ignore.case = TRUE)) {
    return("neisseria11")
  }
  
  # Pseudomonas
  if (grepl("Pseudomonas", org, ignore.case = TRUE)) {
    return("pseudomonas12")
  }
  
  # Serratia
  if (grepl("Serratia", org, ignore.case = TRUE)) {
    return("serratia13")
  }
  
  # Candida (and other yeasts)
  if (grepl("Candida", org, ignore.case = TRUE)) {
    return("candida3")
  }
  
  # Generic "Yeast" (if not already caught by Candida)
  if (grepl("Yeast", org, ignore.case = TRUE)) {
    return("yeast16")
  }
  
  # Citrobacter
  if (grepl("Citrobacter", org, ignore.case = TRUE)) {
    return("citrobacter4")
  }
  
  # Generic descriptors – these include various “Gram …” descriptions
  if (grepl("Gram Negative Rods", org, ignore.case = TRUE) ||
      grepl("Non lactose fermenting gram negative rods", org, ignore.case = TRUE) ||
      grepl("Gram negative coccobacillus", org, ignore.case = TRUE) ||
      grepl("Gram Positive Cocci", org, ignore.case = TRUE) ||
      grepl("Gram positive flora", org, ignore.case = TRUE)) {
    return("other18")
  }
  
  # Diphtheroids (treated as Corynebacterium/Diphtheroids)
  if (grepl("Diphtheroids", org, ignore.case = TRUE)) {
    return("coryneanddipther6")
  }
  
  # Other genera commonly not assigned to a specific group
  if (grepl("Enterococcus", org, ignore.case = TRUE) ||
      grepl("Proteus", org, ignore.case = TRUE) ||
      grepl("Mycoplasma", org, ignore.case = TRUE) ||
      grepl("Bifidobacterium", org, ignore.case = TRUE) ||
      grepl("Moraxella", org, ignore.case = TRUE)) {
    return("other18")
  }
  
  # Default to "other18"
  return("other18")
}
