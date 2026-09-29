# PII Classification

## Dataset
sales_governance.csv

## Direct PII Assessment

No direct personally identifiable information (PII) was identified in the cleaned dataset.

Examples of direct PII that are not present:
- Full name
- Email address
- Phone number
- Home address
- Government identification number
- Passport number
- Bank or payment information

## Demographic / Sensitive Attributes

| Column | Classification | Handling |
|---|---|---|
| sex | Demographic attribute | Restrict unnecessary exposure |
| who | Demographic attribute | Use only when required |
| adult_male | Demographic attribute | Use according to data-classification policy |

## Governance Recommendations

If future versions of the dataset contain direct identifiers:

1. Minimise collection of unnecessary PII.
2. Mask or tokenise identifiers where possible.
3. Restrict access using role-based permissions.
4. Encrypt sensitive data at rest and in transit.
5. Avoid exposing PII in BI dashboards or exported reports.
6. Maintain the data classification as part of the data contract.
