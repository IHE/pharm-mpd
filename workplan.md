## Draft Work Plan for MPD Release

### 1. Issue Cleanup and Triage

The repository has **35 open issues** that need to be categorized and resolved before release:

#### 1.1 Close "preapplied" issues (9 issues - changes already applied)
These can be verified and closed immediately:
- #70, #69, #68 (Substitution-related fixes)
- #67 (Add Comment to Dispense)
- #66 (Use MedicationDispense, not Dispensation)
- #64 (item.containedQuantity should be Ratio)
- #62 (strengthInfo should be 0..1)
- #46 (Medication model: batch/lot/expiry date)
- #39 (Ingredient.role vs isActive) — also has "HL7 Discussion" label

**Action:** Verify each is indeed applied in current code, then close with a note.

#### 1.2 Resolve "HL7 Discussion" items (7 issues)
These require HL7 coordination or decisions:
- #83 (time of declining dispense)
- #47 (substitution.type mandatory?)
- #39 (Ingredient.role vs isActive — also preapplied)
- #32 (Medication: add medication details — also deferred)
- #30 (Medication: key+value pairs)
- #2 (Medication should have a Classification attribute)
- #1 (Link Medication to definitional resource)

**Action:** Review with HL7 Pharmacy WG; decide which are deferred vs. resolved by FHIR R6 capabilities.

#### 1.3 Decide on "deferred" issues (3 issues)
- #52 (strengthType - keep or drop)
- #32 (Medication: add medication details)
- #1 (Link Medication to definitional resource)

**Action:** Confirm deferral to next version, label with target milestone, close or document in known issues.

#### 1.4 Resolve Public Comment (PC) issues (12 issues, #96–#108)
Recent public comment feedback that must be addressed:
- #108 (Is PHARM-5 already defined?) — clarify scope
- #107 (whenHandedOver 1..1 not good for dispense decline)
- #106 (Logical models refer to FHIR resources instead of models)
- #105 (MedicationIngredientRole extension context too broad)
- #104 (Typo in extension title)
- #103 (Examples lack descriptions)
- #102 (Change identifier.system in examples)
- #101 (PHARM-9 copy-paste error)
- #100 (PHARM-7 copy-paste error)
- #99 (PHARM-7 refers to RequestGroup — R4 name)
- #98 (Clarify PHARM-5)
- #97 (Inconsistent use of request/order/prescription)
- #96 (Add non-prescribing health professional as order changer)

**Action:** Work through these systematically — quick fixes (#104, #103, #102, #101, #100, #99) first, then substantive ones.

#### 1.5 Remaining open issues
- #95 (Alignment with US Medication History IG) — document cross-profile considerations
- #51 (Actionable tag) — decide and implement or defer
- #50 (Discourage use of Document) — add narrative guidance
- #49 (Very complex dosaging) — add guidance or defer
- #42 (Overall quantity of prescribed medication)
- #41 (Narrative page for Medication examples)
- #38 (Add clarifications to transactions)
- #37 (Add hospital Medication example)
- #33 (Profiling: Obligations vs Must Support)
- #31 (Medication: alternative code/identifier)

**Action:** Triage into "must address for release" vs. "defer to next version."

---

### 2. PHARM-6 Transaction Finalization

PHARM-6 (Submit Prescription Bundle) is already drafted in `input/pagecontent/pharm-6.md` and referenced in `input/pagecontent/actors-transactions.md`. Remaining work:

#### 2.1 Content review
- Verify alignment with COW IG (Clinical Order Workflows) — the `subscription-notification` Bundle type pattern
- Confirm the Bundle structure example is valid against FHIR R6 ballot 3
- Review the coordination Task and RequestOrchestration patterns for completeness

#### 2.2 Capability statements
- The Order Placer and Order Receiver capability statements already reference PHARM-6 (confirmed in FSH files). Verify they include the Bundle-level interaction (POST to base endpoint).

#### 2.3 Actor definitions
- Already updated (staged changes in `orderplacer.fsh`, `orderreceiver.fsh`). Verify PHARM-6 is listed in the actor capability references.

#### 2.4 Examples
- Add a conformant FHIR example of a PHARM-6 Bundle (currently only a YAML sketch exists in the narrative)
- Reference the existing `Bundle-200-multiitem-prescription-without-orchestration.json` or create a new one

#### 2.5 Update known issues
- Remove the note in `input/pagecontent/changes.md` line 10: *"No guidance for a 'prescription Bundle'"* — this is now addressed by PHARM-6

---

### 3. Workflow Considerations

#### 3.1 CI/CD workflows
Currently two GitHub Actions workflows exist:
- `.github/workflows/fhirbuild.yml` — runs FHIR IG Publisher build
- `.github/workflows/ghbuild.yml` — publishes to GitHub Pages

Both use the WHO SMART base reusable workflows. Consider:
- **Add a QA gate:** Run SUSHI compilation + IG Publisher validation as a required check on PRs before merge
- **Add branch protection** on `master` to prevent direct pushes — all changes via PR
- **Consider adding a release workflow** that tags a version and publishes a formal release artifact (e.g., `npm pack` of the IG package, or a GitHub Release with the built IG)

#### 3.2 Publication workflow (IHE process)
- Update `sushi-config.yaml`: bump version from `1.0.0-comment-2`, update `date` and `releaseLabel` as appropriate for the next publication stage (e.g., `trial-implementation` or `public-comment`)
- Coordinate with IHE publication process — ensure the IG is registered and the canonical URL resolves
- Verify the continuous build at `build.fhir.org/ig/IHE/pharm-mpd` reflects the latest

#### 3.3 FHIR version consideration
- Currently targeting `6.0.0-ballot3`. Confirm whether this should stay or move to a released FHIR version
- The `generate-version: r4` parameter in sushi-config produces R4 cross-version artifacts — verify these are still desired and working

---

### 4. Content Completion Checklist

Based on the TODOs embedded in `sushi-config.yaml` comments:

| # | Item | Status | Owner hint (from config) |
|---|------|--------|--------------------------|
| 4.1 | Simplify Volume 1 overview | Pending | JCT |
| 4.2 | Glossary — core actor/concept definitions only | Pending | JCT |
| 4.3 | Use Cases — finish or remove | Low priority | JCT |
| 4.4 | Medication Concepts — copy/summarize from EU MPD | Pending | MR |
| 4.5 | Grouping page — finish or merge content | Pending | JCT |
| 4.6 | Data Models — update and write narrative | Pending | JCT |
| 4.7 | Actors and Transactions — finalize | Pending | MR |
| 4.8 | Actor grouping examples — consolidate into Actors page | Pending | MR |
| 4.9 | Test plan — currently placeholder | Deferred |  |
| 4.10 | Error codes — currently empty | Deferred |  |
| 4.11 | Security considerations — copy from template | Dropped for now | MR |

---

### 5. Technical Tasks

| # | Task | Priority |
|---|------|----------|
| 5.1 | Clean up `input/fsh/temp2.fsh` — test examples for dispense decline/cancel; move to proper examples folder or remove | High |
| 5.2 | Fix copy-paste errors in PHARM-7 (#100) and PHARM-9 (#101) | High |
| 5.3 | Fix PHARM-7 reference to RequestGroup → RequestOrchestration (#99) | High |
| 5.4 | Fix typo in extension title (#104) | Quick fix |
| 5.5 | Add descriptions to PrescriptionLine examples 1-9 (#103) | Quick fix |
| 5.6 | Change identifier.system to `https://example.org` in examples (#102) | Quick fix |
| 5.7 | Address whenHandedOver cardinality for dispense decline (#107) | Medium |
| 5.8 | Review logical model references to FHIR resources (#106) | Medium |
| 5.9 | Narrow MedicationIngredientRole extension context (#105) | Medium |
| 5.10 | Harmonize terminology: request vs. order vs. prescription (#97) | High |
| 5.11 | Clarify PHARM-5 scope and definition (#98, #108) | High |

---

### 6. Suggested Release Sequence

1. **Quick fixes** — #99, #100, #101, #102, #103, #104 (typos, copy-paste, example cleanup)
2. **Close preapplied** — verify and close #39, #46, #62, #64, #66, #67, #68, #69, #70
3. **Substantive PC resolution** — #97, #98, #105, #106, #107, #108
4. **PHARM-6 finalization** — examples, capability statement verification, remove known-issue note
5. **Content completion** — narrative pages per section 4 checklist
6. **Workflow/CI hardening** — add QA checks, branch protection
7. **Triage remaining** — label deferred issues for next version
8. **Version bump & publish** — update sushi-config.yaml, build, submit to IHE publication
