
---

## 8.3. Gravitational Collapse, Entropy, and Causality

This chapter unifies a thermodynamic analysis of gravitational collapse with a rigorous theoretical derivation of an alternative entropy concept—overlap-free entropy, denoted $S_{\mathrm{CS}}$—that counts only fundamentally distinguishable, causally admissible configurations. The goals are:
- to make precise in which sense collapse-generated radiation and gravitational waves can be highly ordered and low in entropy per unit energy,
- to formalize how long-range gravity imposes global constraints that reduce effective degrees of freedom and the reachable configuration space,
- to articulate a framework in which an entropy defined on causally constrained, symmetry-identified microstates, $S_{\mathrm{CS}}$, can decrease during collapse even when standard thermodynamic entropies increase,
- to detach the direction of time and causality from an a priori entropic monotonicity and instead relate them to dynamical instabilities, cosmic expansion, and causal delay.

The result is a single, mathematically grounded narrative that places gravitational collapse, radiative order, causal structure, indistinguishability, and symmetry reduction on a common footing.

**Conventional thermodynamics of collapse: what increases, what can be ordered**

For an $N$-particle system with classical phase space $\Omega \subset \mathbb{R}^{6N}$ and coarse-grained macrostates, the Boltzmann entropy is $S_B = k_B \ln W$, where $W$ is the number (or measure) of microstates compatible with the macrostate. In the Gibbs formulation with density $\rho(\Gamma)$ on phase space, $S_G = -k_B \int_{\Omega} \rho \ln \rho \, d\Gamma$. For weak, short-range interactions and large $N$, these definitions underpin the second law, $dS/dt \ge 0$ for an isolated system, once coarse-graining and molecular chaos are assumed.

Self-gravitating systems differ in two crucial ways:
- long-range interactions imply negative heat capacity and nonadditivity: for a bound configuration at virial equilibrium, $2K + W = 0$, $E = K + W = -K$, and $C = dE/dT < 0$;
- global instabilities (Jeans instability) induce collapse below a critical scale set by $k_J = \sqrt{4\pi G \rho}/c_s$ or, in mass form, $M_J \sim \frac{\pi^{5/2}}{6} \frac{c_s^3}{G^{3/2} \rho^{1/2}}$, where $c_s$ is the sound speed, $\rho$ is density.

When a diffuse gas cloud collapses:
- gravitational potential energy is converted into kinetic energy and radiation,
- large amounts of entropy are typically exported as photons (and neutrinos) to the environment,
- if a black hole forms, the Bekenstein–Hawking entropy $S_{BH} = k_B \, \frac{A}{4 \ell_P^2}$ with $A = 16\pi G^2 M^2/c^4$ dwarfs all prior matter entropy, yielding $S_{BH}/k_B \approx 1.07\times 10^{77} (M/M_\odot)^2$.

Standard accounting therefore finds that the total thermodynamic entropy of an isolated “matter + radiation + gravity” system increases. However, this does not imply that every outflow of energy is maximally disordered. In fact, collapse frequently emits highly structured radiation and gravitational waves with low entropy per energy. This distinction—global $S$ increasing versus emitted energy being ordered—is central to what follows.

**Directionality, coherence, and entropy content of emitted radiation and gravitational waves**

- Coherent radiation is represented by pure states with von Neumann entropy $S(\rho) = -k_B \mathrm{Tr}(\rho \ln \rho) = 0$. Thermodynamic entropy emerges when radiation is mixed or thermalized. For a photon gas in equilibrium, $s_\gamma = (4/3)\, a T^3$ and $u_\gamma = a T^4$, so $S_\gamma = (4/3)\, E_\gamma/T$ at temperature $T$.
- Crucially, order per unit energy obeys $S_\gamma/E_\gamma \le 1/T$ with equality for blackbody radiation. Directional, narrowband, or coherently phased emission has $S_\gamma/E_\gamma \ll 1/T$.
- Gravitational waves emitted in compact-binary coalescences are well-described by classical coherent states. Their energy flux is $F = \frac{c^3}{32\pi G} \langle \dot h_{ij} \dot h^{ij} \rangle$, with waveforms $h_{ij}(t)$ of high predictability and low algorithmic complexity. Entropy is injected primarily when such waves decohere, scatter, or thermalize into a mixed graviton state—which is typically negligible on astrophysical timescales.

Thus, while the total entropy of “source + environment” increases once all radiation ultimately mixes, at emission the energy outflow can be highly ordered and tightly constrained by the source dynamics. This is consistent with the observation that structured energy flow can catalyze further order in the environment (e.g., anisotropic heating, feedback, and structure formation seeded by gradients).

**Overlap-free entropy $S_{\mathrm{CS}}$: definition and rationale**

The overlap-free entropy counts only fundamentally distinguishable, causally admissible configurations, modulo symmetries and redundancies. Formally:

- Indistinguishability and symmetry identification:
  - Particle identity is irrelevant; permutations of identical particles do not generate new microstates. Let $G_{\mathrm{perm}} \cong S_N$ act on $\Omega$ by particle relabeling. More generally, let $G_{\mathrm{sym}}$ be the full symmetry group (including spatial isometries, gauge, and any global invariances) acting on $\Omega$.
  - Identify microstates along symmetry orbits: two points $\Gamma_1,\Gamma_2 \in \Omega$ that satisfy $\Gamma_2 = g\cdot \Gamma_1$ with $g \in G_{\mathrm{sym}}$ are regarded as the same configuration. The symmetry-reduced space is $\Omega/G_{\mathrm{sym}}$.

- Causal admissibility:
  - Not every element of $\Omega/G_{\mathrm{sym}}$ is dynamically reachable from given initial data in finite “physical time.” Let $\mathcal{R}(t)$ be the reachable set under the actual dynamics and constraints at a clock reading $t$. This set is shaped by integrals of motion, conservation laws, long-range correlations, retarded interactions, and the realized measurement history that correlates subsystems.
  - The dependency graph $H=(V,E)$ encodes causal constraints: $V$ is the set of degrees of freedom; an edge $(i,j)\in E$ encodes dynamical dependence (e.g., through interaction kernels, conservation constraints, or shared measurement records). Reachability is restricted by $H$ in that transitions must respect conditional dependences implied by $H$.

- Overlap-free criterion:
  - Consider a coarse-graining of one-particle phase space $\gamma=\mathbb{R}^3_x \times \mathbb{R}^3_p$ into cells $\{C_\alpha\}_{\alpha=1}^K$ of volume $\Delta \gamma \sim h^3$ (quantum-limited). Define a microconfiguration as overlap-free if no two particles occupy the same coarse-grained cell, i.e., an exclusion constraint analogous to $n_\alpha \in \{0,1\}$ for all $\alpha$, independent of bosonic or fermionic statistics. This abstracts the idea that only configurations with “unique identities” at the given resolution (and devoid of transformation degeneracies) are counted.
  - In continuous form, one can define an overlap functional $O = \sum_{\alpha} \binom{n_\alpha}{2}$ and restrict to $O=0$.

Definition (overlap-free entropy). Let $\Omega_{\mathrm{CS}}(t) = \{\Gamma \in \mathcal{R}(t)/G_{\mathrm{sym}} \,:\, O(\Gamma)=0\}$ be the set of causally admissible, symmetry-identified, overlap-free configurations at clock time $t$. Then $S_{\mathrm{CS}}(t) = k_B \ln |\Omega_{\mathrm{CS}}(t)|$.

Immediate properties:
- $S_{\mathrm{CS}} \le S_{\mathrm{classical}}$ because $\Omega_{\mathrm{CS}} \subseteq \Omega/G_{\mathrm{sym}}$ and reachability plus overlap constraints strictly reduce the count.
- $S_{\mathrm{CS}}$ reduces narrative/teleological content: it counts only configurations that are physically distinguishable and causally consistent given the actual history and constraints, not hypothetical permutations.
- $S_{\mathrm{CS}}$ is scale- and regime-sensitive. In long-range correlated regimes (gravity-dominated), $|\Omega_{\mathrm{CS}}|$ can shrink even as kinetic temperatures rise, because the causal and binding constraints render most “classically possible” microstates dynamically inaccessible.

This construction formalizes the intuition that classical entropies rely on an idealized, weakly correlated, permutation-rich configuration space. By stripping those idealizations, $S_{\mathrm{CS}}$ may display evolution opposite to $S_{\mathrm{classical}}$.

**Indistinguishability, quantum statistics, and the role of overlap**

In quantum statistical mechanics, indistinguishable particles enforce state-counting by occupation numbers rather than labels. For fermions, $n_\alpha \in \{0,1\}$; for bosons, $n_\alpha \in \mathbb{N}_0$, with constraints such as $\sum_\alpha n_\alpha = N$. The Sackur–Tetrode formula for a monatomic ideal gas,
$S = N k_B \left[ \ln\!\left( \frac{V}{N} \left( \frac{4\pi m E}{3N h^2} \right)^{3/2} \right) + \frac{5}{2} \right]$,
already divides by $N!$ to account for indistinguishability.

The overlap-free constraint $n_\alpha \in \{0,1\}$ for all species (regardless of statistics) deliberately suppresses multi-occupancy at the coarse-grained resolution. This makes $S_{\mathrm{CS}}$ closer to a count of “fundamentally distinguishable placements” in phase space, aligned with the thesis that only configurations with unique identities and without transformation redundancy should be counted.

Consequences for dilute versus dense regimes:
- Dilute cloud: $N \ll K$, so overlap-free configurations are abundant; combinatorially $W_{\mathrm{CS}} \approx \binom{K}{N}$, and $S_{\mathrm{CS}} \approx k_B \ln \binom{K}{N} \sim k_B N \ln(K/N)$ for $K/N \gg 1$.
- Collapsing cloud: $K_x$ (the number of spatial cells consistent with binding) shrinks drastically as $R$ decreases; meanwhile $K_p$ (momentum cells) may grow as the system heats. The effective cell count $K=K_x K_p$ does not necessarily increase, because causality and binding constraints remove large swathes of phase space from $\mathcal{R}(t)$. Typically, $K_x$ shrinks far faster than $K_p$ grows, especially once particles are confined to geodesic orbits and collisionless integrals of motion narrow the accessible band. Hence $W_{\mathrm{CS}}$ decreases and $S_{\mathrm{CS}}$ falls.

This explains why, under $S_{\mathrm{CS}}$, a diffuse hydrogen cloud has larger entropy than its collapsing counterpart: the diffuse state supports many more overlap-free, causally independent microconfigurations.

**Collapse dynamics and counting: a minimal model**

Consider a spherical gas cloud with mass $M$, initial radius $R_0$, and temperature $T_0$. Let $R(t)$ shrink on a free-fall timescale $t_{ff} \approx \sqrt{3\pi/(32 G \rho)}$ while radiative cooling ejects energy $\Delta E$.

- Jeans threshold: collapse initiates when $M \gtrsim M_J$, with $M_J \sim \frac{\pi^{5/2}}{6} \frac{c_s^3}{G^{3/2}\rho^{1/2}}$, where $c_s \sim \sqrt{k_B T / \mu m_p}$.
- Virialization: near equilibrium, $2K + W = 0$, $K \sim \frac{3}{2} N k_B T$, $W \sim - \frac{3}{5} G M^2/R$.
- Radiative energy: a fraction $\epsilon$ of $|W|$ is radiated, $\Delta E \sim \epsilon \, G M^2/R$. If emitted into $m$ nearly coherent modes, the radiation state has entropy $S_\gamma \sim k_B \ln m$ (small for modest $m$), versus thermal radiation at temperature $T$ which would carry $S_\gamma \sim (4/3)\, \Delta E / T$.

Overlap-free counting:
- Coarse-grain $\gamma$ into $K_x \sim V/\Delta x^3$ and $K_p \sim V_p/\Delta p^3$ with $\Delta x \Delta p \sim h$ and $V_p \sim (4\pi/3) (p_{\max})^3$, where $p_{\max} \sim \sqrt{2 m \langle v^2 \rangle} \sim \sqrt{3 m k_B T}$.
- Initially, $K_x^{(0)} \sim \frac{4\pi R_0^3/3}{\Delta x^3}$; finally, $K_x^{(f)} \sim \frac{4\pi R_f^3/3}{\Delta x^3}$ with $R_f \ll R_0$.
- Even if $K_p$ increases by a factor $(T_f/T_0)^{3/2}$, the net product $K=K_x K_p$ tends to decrease if $R$ contracts faster than $\sqrt{T}$ rises, which is typical because $T \propto 1/R$ at virial equilibrium while $K_x \propto R^3$.

Thus $W_{\mathrm{CS}}^{(f)} \approx \binom{K_x^{(f)} K_p^{(f)}}{N} \ll \binom{K_x^{(0)} K_p^{(0)}}{N}$ for $N$ fixed and $R_f \ll R_0$, implying $S_{\mathrm{CS}}^{(f)} < S_{\mathrm{CS}}^{(0)}$.

**“Ordered outflow” and environmental organization**

Collapse-generated outflows are constrained by geodesic motion and local geometry:
- Directionality: emission is anisotropic and phase-correlated along gradients; near-coherent wave packets carry high Fisher information about the source parameters.
- Causal imprint: outflows are not statistically independent from the source; they carry a low conditional entropy $S(\mathrm{outflow} | \mathrm{source})$, especially in the early phase before significant scattering.

Energy deposited into the environment raises local temperature and builds gradients that drive further structure formation. This is order-producing from the perspective of reduced degrees of freedom: a small number of macroscopic modes (e.g., shock fronts, jets) dominates the dynamics, and the environmental microstates are funneled into a restricted manifold of configurations correlated with the source.

**Scale differentiation, causal delay, and collapse without entropy as a driver**

On cosmological scales, collapse is governed by expansion and instability, not by an entropic imperative:
- Linear growth of density perturbations in a matter-dominated universe obeys $\ddot \delta + 2 H \dot \delta - 4\pi G \rho \, \delta = 0$ with growing mode $\delta \propto D(a)$; here $H$ is Hubble rate and $a$ is scale factor. Collapse occurs once $\delta \to \mathcal{O}(1)$, independent of a thermodynamic arrow.
- Causal overlagging: gravitational influence propagates at $c$; the retarded Green’s function enforces that sources on the past light cone shape local dynamics with delays. The effective potential is $\Phi(\mathbf{x},t) \sim -G \int d^3x' \, \rho(\mathbf{x}', t_r) / |\mathbf{x}-\mathbf{x}'|$ with retarded time $t_r = t - |\mathbf{x}-\mathbf{x}'|/c$.

These causal structures induce instabilities and hierarchical collapse regardless of whether $S_{\mathrm{classical}}$ rises or falls locally at intermediate steps. Time ordering is furnished by causal precedence (light-cone structure), not by $dS/dt$.

**Time and causality decoupled from a thermodynamic arrow**

In a causally constrained view, “time” is the partial order on configurations induced by the dependency graph $H$ and the dynamical flow. Let $(\Omega_{\mathrm{CS}}, \prec)$ be the set of overlap-free configurations with the relation $\Gamma_1 \prec \Gamma_2$ if $\Gamma_2$ is reachable from $\Gamma_1$ by admissible dynamics obeying $H$. The emergent arrow is the chain of such relations. No axiom requires $S_{\mathrm{CS}}$ or $S_{\mathrm{classical}}$ to be monotone along this chain; either can increase or decrease depending on the regime. Thus, collapse can proceed “forward in time” while $S_{\mathrm{CS}}$ decreases.

**Classical second law versus $S_{\mathrm{CS}}$: regime dependence and compatibility**

- Classical second law: for an isolated system with short-range interactions and appropriate coarse-graining, $S_{\mathrm{classical}}$ is overwhelmingly likely to increase due to the dominance of high-measure macrostates.
- Gravity-dominated systems: long-range correlations and constraints invalidate the independence and additivity assumptions that undergird typical proofs. Nevertheless, when all channels are included (matter, radiation, gravitational horizons), $S_{\mathrm{classical,tot}}$ still increases in realistic collapse scenarios because of large radiative entropy and, where applicable, $S_{BH}$.

The point of $S_{\mathrm{CS}}$ is different: it asserts that the fundamental count of causally reachable, symmetry-identified, overlap-free configurations can decrease during collapse. If one elevates $S_{\mathrm{CS}}$ to the status of the “real” entropy, then the classical second law becomes an effective, regime-specific description valid when long-range constraints are negligible. In that reading, “violations” of the classical law are not failures of nature but signals that the idealized counting has departed from the causally relevant microstate space.

**Worked comparison: diffuse hydrogen cloud versus collapsing cloud**

Let a diffuse hydrogen cloud of mass $M$, particle number $N = M/m_p$, and radius $R_0$ be initially at temperature $T_0$. Take coarse-grainings $\Delta x$ and $\Delta p$ such that $\Delta x \Delta p \sim h$.

- Diffuse phase:
  - Spatial cells $K_x^{(0)} \sim \frac{4\pi R_0^3/3}{\Delta x^3}$.
  - Momentum cells $K_p^{(0)} \sim \frac{4\pi}{3} (p_{\max}^{(0)})^3 / \Delta p^3$, with $p_{\max}^{(0)} \sim \sqrt{3 m_p k_B T_0}$.
  - Overlap-free multiplicity $W_{\mathrm{CS}}^{(0)} \approx \binom{K_x^{(0)} K_p^{(0)}}{N}$, yielding $S_{\mathrm{CS}}^{(0)} \approx k_B \ln \binom{K^{(0)}}{N}$.

- Collapsing phase ($R_f \ll R_0$, $T_f \gg T_0$ by virial heating):
  - $K_x^{(f)} \sim \frac{4\pi R_f^3/3}{\Delta x^3}$ shrinks as $R_f^3$.
  - $K_p^{(f)} \sim K_p^{(0)} (T_f/T_0)^{3/2}$ grows as $T_f^{3/2}$.
  - If $T_f \propto 1/R_f$ (virial scaling), then $K_p^{(f)} \propto R_f^{-3/2}$ while $K_x^{(f)} \propto R_f^3$, so $K^{(f)} \propto R_f^{3/2}$ decreases with $R_f$.
  - Consequently, $W_{\mathrm{CS}}^{(f)} \approx \binom{K^{(f)}}{N} \ll \binom{K^{(0)}}{N}$ and $S_{\mathrm{CS}}^{(f)} < S_{\mathrm{CS}}^{(0)}$.

Radiation:
- If a fraction $\epsilon$ of $|W|$ is emitted as nearly coherent photons or gravitational waves into $m$ modes, the associated entropy is $S_\mathrm{out} \sim k_B \ln m \ll (4/3)\, \Delta E/T_f$. The emitted field is highly correlated with the source, so $S(\mathrm{outflow}|\mathrm{source})$ is small and the joint $S_{\mathrm{CS}}$ may continue to fall.

This calculation captures the central claim: under $S_{\mathrm{CS}}$, the collapsing cloud can exhibit an entropy decrease even though classical, fully thermalized entropy of the total system increases once all outflows mix.

**Limiting case: degenerate matter and “trapped” potential energy**

In extreme compression (e.g., neutron-rich matter, “neutronium”), Fermi degeneracy pressure dominates. The available radiative channels are limited; much of the gravitational binding is stored as Fermi momentum. Thermodynamically:
- the matter entropy per baryon becomes very small at low temperature and high degeneracy,
- neutrino emission may dominate but can be weakly coupled,
- $S_{\mathrm{CS}}$ falls sharply because both spatial and momentum configurations are tightly constrained by Pauli blocking and global equilibrium conditions.

This regime illustrates the trend: stronger constraints and less radiative mixing correspond to lower $S_{\mathrm{CS}}$.

**Philosophical and methodological implications**

The following philosophical claims are often implicit in classical thermodynamics:
- Teleological language (“systems strive to maximize entropy”) is a metaphor for probabilistic dominance within an idealized phase space. In $S_{\mathrm{CS}}$, no such teleology is needed: dynamics moves along causally permitted edges in $H$, and the count of overlap-free configurations simply tracks how constraints shape reachability.
- “Order” and “disorder” are not primitives. In $S_{\mathrm{CS}}$, they are replaced by the logarithmic measure of fundamentally distinguishable, causally consistent configurations. A gas is “disordered” only insofar as $S_{\mathrm{CS}}$ is large; a crystal is “ordered” only insofar as $S_{\mathrm{CS}}$ is small.
- If cosmic scaling had privileged gravity at small scales instead of short-range forces, our narrative “second law” might have taken a different form. This underlines that the classical law is an a posteriori summary of a particular regime, not a universal a priori truth. Elevating $S_{\mathrm{CS}}$ reframes the law as an emergent, regime-dependent statement.

**Synthesis: gravitational collapse as ordered evolution, not necessarily an entropic increase**

- Under standard thermodynamic accounting that includes radiation and horizons, the total entropy of an isolated system increases during collapse. This remains correct and is strongly amplified if a black hole forms.
- At the same time, the energy emitted during collapse can be highly ordered (directional, coherent, information-rich). Its entropy per unit energy is far below that of a thermal spectrum at the same energy scale. This ordered outflow organizes the environment by imposing gradients and correlations.
- In the overlap-free, causally constrained counting $S_{\mathrm{CS}}$, the number of fundamentally distinguishable, reachable microconfigurations typically decreases during collapse because long-range binding, conservation laws, retarded interactions, and symmetry identification excise most of the classically available phase space. Dense, bound states have fewer $S_{\mathrm{CS}}$-microstates than diffuse ones at comparable energy.
- Time and causality arise from dynamical and light-cone structure, not from the sign of $dS/dt$. Causal delays and scale differentiation in an expanding universe trigger collapse irrespective of any entropic arrow.
- If one regards $S_{\mathrm{CS}}$ as the primary entropy, then instances in which $S_{\mathrm{classical}}$ increases while $S_{\mathrm{CS}}$ decreases are not paradoxes but signatures that the classical coarse-graining is an idealization, whereas $S_{\mathrm{CS}}$ tracks the “real” contraction of the causally admissible configuration space.

Altogether, gravitational collapse need not be viewed as “entropy increase” in any unique, universal sense. It is an ordered, constraint-accumulating evolution that can lower $S_{\mathrm{CS}}$ even as it exports classical entropy to radiation and, ultimately, to horizons. Only after the emitted energy fully disperses and decoheres—potentially over cosmological times—does the classical global entropy reflect the completed entropic budget. In contrast, $S_{\mathrm{CS}}$ captures the immediate, physically distinguishable and causally bound reality of the evolving system.

**A Reassessment of Gravitational Entropy**

Gravitational collapse presents a paradox where the total thermodynamic entropy of a system increases, particularly through emitted radiation and the formation of black holes, yet the emitted energy itself can be highly ordered and coherent. To resolve this, an alternative entropy concept, referred to as overlap-free entropy `$S_{\mathrm{CS}}$`, is proposed. This measure quantifies the number of fundamentally distinguishable and causally valid configurations, providing a framework where collapse-generated radiation can be understood as low-entropy, information-rich output.

**Counting Fundamentally Distinguishable States**

The proposed entropy, `$S_{\mathrm{CS}}$`, is defined by a more restrictive method of counting microstates. It begins with the standard phase space but systematically eliminates redundancies and inaccessible configurations. First, it identifies all states that are equivalent under symmetries, such as the permutation of identical particles. Second, it considers only those configurations that are dynamically reachable from the initial conditions, acknowledging that long-range gravity imposes severe global constraints. Finally, it applies an "overlap-free" criterion, counting only states where no two particles occupy the same coarse-grained cell in phase space.

**Gravitational Collapse as an Ordering Mechanism**

Under this new counting method, gravitational collapse is re-framed as a process that reduces, rather than increases, the system's fundamental entropy. A diffuse gas cloud initially possesses a vast number of distinguishable, non-overlapping configurations. As the cloud collapses, the available spatial volume shrinks drastically. This confinement, combined with causal constraints imposed by the gravitational field, reduces the number of accessible microstates far more rapidly than kinetic heating increases the available momentum states. Consequently, `$S_{\mathrm{CS}}$` decreases as the system evolves from a diffuse to a dense, gravitationally bound state.

**Causality as the Foundation of Time's Arrow**

This framework detaches the direction of time from the principle of ever-increasing entropy. Instead, the arrow of time is grounded in the more fundamental concepts of causal structure and dynamics. Processes unfold according to causal precedence, governed by dynamical instabilities and retarded interactions that propagate at a finite speed. Time progresses along a chain of causally connected events, a progression that is independent of whether `$S_{\mathrm{CS}}$` or even classical entropy is increasing or decreasing. Thus, a system can evolve "forward in time" while its number of fundamental configurations declines.

**The Second Law as a Regime-Dependent Principle**

The classical second law of thermodynamics is positioned not as a universal, a priori law, but as an effective description that emerges in specific physical regimes dominated by short-range interactions and statistical independence. In gravity-dominated systems where long-range correlations and global constraints are paramount, `$S_{\mathrm{CS}}$` provides a more accurate measure of the "real" degrees of freedom. From this perspective, gravitational collapse is an ordered evolution that concentrates matter and reduces the space of possibilities, even as its byproducts, once fully thermalized, contribute to an increase in the universe's total classical entropy.