# Data Quality Scorecard

## Dataset

**sales_governance.csv** — cleaned Titanic dataset

## DAMA-DMBOK Data Quality Assessment

| Dimension | Status | Evidence / Recommendation |
|---|---|---|
| Completeness | PASS | Missing values were checked across all columns. Continue monitoring null rates. |
| Accuracy | PASS | Age and fare values were checked against reasonable ranges. |
| Consistency | PASS | Numeric and categorical consistency rules were checked. |
| Timeliness | NOT MEASURABLE | No reliable ingestion timestamp is available. Add one for freshness monitoring. |
| Uniqueness | REVIEW | Duplicate records were checked. Continue monitoring duplicate rates. |
| Validity | PASS | Allowed categorical values and valid ranges were checked. |

## Improvement Recommendations

1. Add ingestion timestamps to enable freshness and SLA monitoring.
2. Automate Great Expectations validation before data reaches the BI dashboard.
3. Monitor missing-value, duplicate, and invalid-value rates over time.
4. Maintain the YAML data contract as the dataset schema evolves.
5. Review validation failures before publishing data to downstream dashboards.

## PII Classification

No direct PII columns were identified in the cleaned dataset.

The dataset contains demographic attributes such as `sex` and `adult_male`. These should be handled according to the organization's internal data-classification policy.

If direct identifiers are introduced in future datasets, use appropriate masking, tokenisation, access controls, and encryption.
