context("get_contrasts.glmerMod")

test_that("If it works.", {
  # Fit
  require(lme4)

  fit <- lme4::glmer(Sex ~ Birth_Season + (1 | Salary), data = psycho::affective, family = "binomial")

  contrasts <- get_contrasts(fit, formula = "Birth_Season")
  means <- contrasts$means
  contrasts <- contrasts$contrasts

  testthat::expect_equal(mean(means$Mean), -1.221759, tolerance = 0.05)
  testthat::expect_equal(mean(contrasts$Difference), -0.0734, tolerance = 0.05)
})
